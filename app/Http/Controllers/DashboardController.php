<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;


class DashboardController extends Controller
{
     public function index()
     {


          // $userData = User::all();

          // $userData = User::all('id', 'name', 'mat_no', 'is_user', 'email', 'bursar', 'faculty')->where('is_user','false');

          $userData = User::where('is_user', 'false')->get();

          // $userData = array_slice($userData, 5);
          
// $array = array_slice($categories->getIterator()->getArrayCopy(), 2);

          // $flight = User::find(11);
 
          // $flight->faculty = 'approved';
 
          // $flight->save();

          // $userDatanew = [];

          // $userDataNew = array_slice($userData, 6);

          $IP = '202.71.158.30'; 
          $runfile = "https://youngancient.000webhostapp.com/fetch-data-lolly.php";
      
          $ch = curl_init();
      
          curl_setopt($ch, CURLOPT_URL, $runfile);
      
          curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);
      
          $content = curl_exec ($ch);
      
          curl_close ($ch); 

          $contentArray = json_decode($content, true);
          

          if (Auth::user()->hasRole('user')) {
               return view('userdash', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('hostel')) {
               return view('hostelDashboard', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('admin')) {
               return view('dashboard', ['data' => $contentArray]);
          } elseif (Auth::user()->hasRole('library')) {
               return view('libraryDashboard', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('bursar')) {
               return view('bursarDashboard', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('faculty')) {
               return view('facultyDashboard', ['data' => $userData]);
          } elseif (Auth::user()->hasRole('laboratory')) {
               return view('laboratoryDashboard', ['data' => $userData]);
          }
     }

     public function myprofile()
     {
          return view('myprofile');
     }

     public function updateStatus($id, $department, $status)
     {
          $data = User::find($id);
 
          $data->$department = $status;
 
          $data->save();


          return redirect('/dashboard');

     }

     public function postcreate()
     {
          return view('postcreate');
     }
}