<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\Student;
use Image;
use Carbon\Carbon;
class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         return Student::orderBy('id','desc')->paginate(10);
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
           'student_id'=>'required|unique:students',
           'name'=>'required',
           'email'=> ['required', 'string', 'email', 'max:255', 'unique:students'],
           'mobile'=>'required|numeric|digits:11|unique:students',
           'password'=>['required', 'string', 'min:8'],
        ]);
        $student=Student::insertGetId([
            'student_id' => $request['student_id'],
            'name' => $request['name'],
            'email' => $request['email'],
            'mobile' => $request['mobile'],
            'password' =>  Hash::make($request['password']),
        ]);
        if ($request->image) {

            Student::where('id',$student)->update([
                'image'=>$this->imageprocess($request->image),
            ]);
        }
        return response(['success'=>'Data inserted successfully'],201);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
         return Student::findOrFail($id);
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
        if (!Student::find($id)) {
            return response(['error'=>'Data not found'],404);
        }
        $request->validate([
            'student_id'=>'required|unique:students,student_id,'.$id,
           'name'=>'required',
           'email'=> ['required', 'string', 'email', 'max:255', 'unique:students,email,'.$id],
           'mobile'=>'required|numeric|digits:11|unique:students,mobile,'.$id,
         ]);
       
        Student::where('id',$id)->update([
            'student_id' => $request['student_id'],
            'name' => $request['name'],
            'email' => $request['email'],
            'mobile' => $request['mobile'],
        ]);

        if ($request->image) {

            $student =  Student::find($id);

            if($student->image =='profile.png'){
                Student::where('id',$id)->update([
                    'image'=>$this->imageprocess($request->image),
                ]);

            }elseif ($student->image!=$request->image) {
                unlink(base_path('public/uploads/images/studnets/'.$student->image));
                Student::where('id',$id)->update([
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

        Image::make($image)->resize(215, 215)->save(base_path('public/uploads/images/students/'.$filename),50);
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
        $student =  Student::find($id);
        if($student->image =='profile.png'){
            Student::find($id)->delete();
        }else{
            unlink(base_path('public/uploads/images/students/'.$product->product_image));
            Student::find($id)->delete();

        }
        return response(['success'=>'Data deleted successfully'],201);
    }
}
