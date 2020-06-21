<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use App\Models\User;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;
class AuthenticationController extends Controller
{

	
    public function login(Request $request)
    {
    	$validator = Validator::make($request->all(), [ 
            'email' =>  ['required', 'string', 'email'] ,
            'password' => ['required','min:8'], 
        ]);
        if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }
        $user = User::where('email',$request->email)->first();
        if(!$user){
            return response(['data'=>'User not found']);
        }
        $client = \Laravel\Passport\Client::where('password_client', 1)->first();

        if(Hash::check($request->password,$user->password)){
            $http = new Client;
            $response = $http->post(url('oauth/token'), [
                'form_params' => [
                    'grant_type' => 'password',
                    'client_id' => $client->id,
                    'client_secret' => $client->secret,
                    'username' => $request->email,
                    'password' => $request->password,
                    'scope' => '',
                ],
            ]);

            return response(['data'=>json_decode((string) $response->getBody(), true),]);
        }
    }
    public function register(Request $request) 
    {
    	 $validator = Validator::make($request->all(), [ 
            'name' => ['required', 'string', 'max:255'],
            'email' =>  ['required', 'string', 'email', 'max:255', 'unique:users'] ,
            'password' => ['required', 'string', 'min:8'],
            'c_password' => 'required|same:password',
        ]);
    	 $client = \Laravel\Passport\Client::where('password_client', 1)->first();
		if ($validator->fails()) { 
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $user = User::create([
       		'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password)
   		]);

       $http = new Client();
      

		$response = $http->post(url('oauth/token'), [
		    'form_params' => [
		        'grant_type' => 'password',
		        'client_id' => $client->id,
		        'client_secret' => $client->secret,
		        'username' => $request->email,
		        'password' => $request->password,
		        'scope' => '',
		    ],
		]);

		return json_decode((string) $response->getBody(), true);


    }
}
