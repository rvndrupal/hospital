<?php

namespace App\Http\Controllers;

use App\Front;
use App\Header;
use App\Slider;
use App\Informacion;
use App\Servicio;
use App\Serviciosdo;
use App\Doctore;
use App\Promocione;
use App\Galeria;
use App\Testimonio;
use Illuminate\Http\Request;

class FrontController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $header=Header::orderBy('id','DESC')->firstOrFail();
        $slider=Slider::orderBy('id','DESC')->firstOrFail();
        $info=Informacion::orderBy('id','DESC')->firstOrFail();
        $servicio=Servicio::orderBy('id','DESC')->firstOrFail();
        $galerias=Galeria::orderBy('id','DESC')->take(4)->get();
        $serviciodos=Serviciosdo::orderBy('id','DESC')->firstOrFail();
        $doctores=Doctore::orderBy('id','DESC')->firstOrFail();
        $promociones=Promocione::orderBy('id','DESC')->take(3)->get();
        $testimonios=Testimonio::orderBy('id','DESC')->take(4)->get();

        //dd($doctores);

       

        return view('front.front',compact('header','slider','info','servicio','galerias','serviciodos','doctores','promociones','testimonios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Front  $front
     * @return \Illuminate\Http\Response
     */
    public function show(Front $front)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Front  $front
     * @return \Illuminate\Http\Response
     */
    public function edit(Front $front)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Front  $front
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Front $front)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Front  $front
     * @return \Illuminate\Http\Response
     */
    public function destroy(Front $front)
    {
        //
    }
}
