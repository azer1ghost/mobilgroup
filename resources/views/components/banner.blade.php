<div class="vh-100" style="box-shadow: inset 5000px 0 rgba(0,0,0,0.22); background-size: cover; background-image: url({{asset('assets/images/container.jpg')}})">
    <div class="container overflow-hidden">
        <div class="row align-items-center vh-100">
            <div class="col-12 col-md-12 col-lg-8 text-light">
                <h1 style="border-bottom: 4px solid #99cd07;display: inline-block; padding-bottom: 2px">{{$meta->get('title')}}</h1>
                <p>{!! $meta->get('body') !!}</p>
            </div>
{{--            <div class="col-12 col-md-12 col-lg-6">--}}
{{--                <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">--}}
{{--                    <div class="carousel-inner">--}}
{{--                        @foreach($sliders as $slider)--}}
{{--                            <div class="carousel-item @if($loop->first) active @endif">--}}
{{--                                <img src="{{asset(Voyager::image($slider->getAttribute('image')))}}" class="w-100" alt="...">--}}
{{--                            </div>--}}
{{--                        @endforeach--}}
{{--                    </div>--}}
{{--                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">--}}
{{--                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>--}}
{{--                    </button>--}}
{{--                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">--}}
{{--                        <span class="carousel-control-next-icon" aria-hidden="true"></span>--}}
{{--                    </button>--}}
{{--                </div>--}}
{{--            </div>--}}
        </div>
    </div>
</div>
