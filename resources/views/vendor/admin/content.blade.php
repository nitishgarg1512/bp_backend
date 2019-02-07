@extends('admin::index', ['header' => $header])

@section('content')
    <section class="content">
        <div class="powerby">
            Powered by BallerProfile
            <img src="/img/icon-bp.png" />
        </div>

        @include('admin::partials.alerts')
        @include('admin::partials.exception')
        @include('admin::partials.toastr')

        {!! $content !!}

    </section>
@endsection
