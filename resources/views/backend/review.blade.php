@extends('layouts.backend')

@section('title', __('Review & Ratings'))

@section('content')
<!-- main Section -->
<div class="main-body">
{{--    <div class="container-fluid">--}}
{{--        @php $vipc = vipc(); @endphp--}}
{{--        @if($vipc['bkey'] == 0)--}}
{{--        @include('backend.partials.vipc')--}}
{{--        @else--}}
{{--        <div class="row mt-25">--}}
{{--            <div class="col-lg-12">--}}
{{--                <div class="card">--}}
{{--                    <div class="card-header">--}}
{{--                        <div class="row">--}}
{{--                            <div class="col-lg-6">--}}
{{--                                <span>{{ __('Review & Ratings') }}</span>--}}
{{--                            </div>--}}
{{--                            <div class="col-lg-6"></div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <!--Data grid-->--}}
{{--                    <div class="card-body">--}}
{{--                        <div class="row">--}}
{{--                            <div class="col-lg-4">--}}
{{--                                <div class="form-group bulk-box">--}}
{{--                                    <select id="bulk-action" class="form-control">--}}
{{--                                        <option value="">{{ __('Select Action') }}</option>--}}
{{--                                        <option value="delete">{{ __('Delete Permanently') }}</option>--}}
{{--                                    </select>--}}
{{--                                    <button type="submit" onClick="onBulkAction()" class="btn bulk-btn">{{ __('Apply') }}</button>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="col-lg-3"></div>--}}
{{--                            <div class="col-lg-5">--}}
{{--                                <div class="form-group search-box">--}}
{{--                                    <input id="search" name="search" type="text" class="form-control" placeholder="{{ __('Search') }}...">--}}
{{--                                    <button type="submit" onClick="onSearch()" class="btn search-btn">{{ __('Search') }}</button>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <div id="tp_datalist">--}}
{{--                            @include('backend.partials.review_ratings_table')--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <!--/Data grid/-->--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        @endif--}}
{{--    </div>--}}


    <div class="container-fluid">
        @php $vipc = vipc(); @endphp
        @if($vipc['bkey'] == 0)
        @include('backend.partials.vipc')
        @else
        <div class="row mt-25">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-lg-6">
                                <span>{{ __('Review & Ratings') }}</span>
                            </div>
                            <div class="col-lg-6"></div>
                        </div>
                    </div>
                    <!--Data grid-->
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group bulk-box">
                                    <select id="bulk-action" class="form-control">
                                        <option value="">{{ __('Select Action') }}</option>
                                        <option value="delete">{{ __('Delete Permanently') }}</option>
                                    </select>
                                    <button type="submit" onClick="onBulkAction()" class="btn bulk-btn">{{ __('Apply') }}</button>
                                </div>
                            </div>
                            <div class="col-lg-3"></div>
                            <div class="col-lg-5">
                                <div class="form-group search-box">
                                    <input id="search" name="search" type="text" class="form-control" placeholder="{{ __('Search') }}...">
                                    <button type="submit" onClick="onSearch()" class="btn search-btn">{{ __('Search') }}</button>
                                </div>
                            </div>
                        </div>
                        <div id="tp_datalist">
                            @include('backend.partials.review_check_ratings_table')
                        </div>
                    </div>
                    <!--/Data grid/-->
                </div>
            </div>
        </div>
        @endif
    </div>

</div>
<!-- /main Section -->
@endsection

@push('scripts')
    <!-- css/js -->
    <script type="text/javascript">
        var TEXT = [];
        TEXT['Do you really want to delete this record'] = "{{ __('Bạn có thực sự muốn xóa bình luận này không?') }}";
        TEXT['Do you really want to delete this records'] = "{{ __('Bạn có thực sự muốn xóa các bình luận này không?') }}";
        TEXT['Do you really want check comment'] = "{{ __('Bạn có muốn duyệt bình luận này?') }}";
        TEXT['Please select action'] = "{{ __('Vui lòng chọn hành động') }}";
        TEXT['Please select record'] = "{{ __('Vui lòng chọn bản ghi') }}";
    </script>
    <script src="{{asset('public/backend/pages/review.js')}}"></script>
@endpush

