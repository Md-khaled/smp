<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Course;
use Image;
use Carbon\Carbon;
class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Course::orderBy('id','desc')->paginate(10);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $request->validate([
           'course_id'=>'required|unique:courses',
           'name'=>'required|unique:courses',
        ]);

       
         $course=Course::insertGetId([
            'course_id' => $request['course_id'],
            'name' => $request['name'],
        ]);
        if ($request->image) {

            Course::where('id',$course)->update([
                'image'=>$this->imageprocess($request->image),
            ]);
        }
        return response(['success'=>'Data inserted successfully','course'=>$course],201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if (!Course::find($id)) {
            return response(['error'=>'Data not found'],404);
        }
        $request->validate([
            'course_id'=>'required|unique:courses,course_id,'.$id,
            'name'=>'required|unique:courses,name,'.$id,
         ]);

        Course::where('id',$id)->update([
            'course_id' => $request['course_id'],
            'name' => $request['name'],
        ]);

        if ($request->image) {

            $course =  Course::find($id);

            if($course->image ==NULL){
                Course::where('id',$id)->update([
                    'image'=>$this->imageprocess($request->image),
                ]);

            }elseif ($course->image!=$request->image) {
                unlink(base_path('public/uploads/images/courses/'.$course->image));
                Course::where('id',$id)->update([
                    'image'=>$this->imageprocess($request->image),
                ]);
            }


        }
         return response(['success'=>'Data updated successfully'],201);
    }
    public function imageprocess($image)
     {
        $exploed1 = explode(";", $image);
        $exploed2 = explode("/", $exploed1[0]);
        $filename =  time().'.'.$exploed2[1];

        Image::make($image)->resize(215, 215)->save(base_path('public/uploads/images/courses/'.$filename),50);
        return $filename;
     }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $course =  Course::find($id);
         if($course->image !=null){
            unlink(base_path('public/uploads/images/courses/'.$course->image));
        }
        Course::find($id)->delete();
        return response(['success'=>'Data deleted successfully'],201);
    }
}
