<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Http\Requests\voucherAddRequest;
use App\Http\Requests\voucherEditRequest;
use App\voucher;

use DB;

class voucherController extends Controller
{
    public function getList()
    {
        $data = DB::table('voucher')->orderBy('id','DESC')->get();
    	return view('backend.voucher.danhsach',compact('data'));
    }

    public function getAdd()
    {
    	return view('backend.voucher.them');
    }

    public function postAdd(voucherAddRequest $request)
    {
    	$voucher = new voucher;
        $voucher->voucher_ten = $request->txtNCCName;
        $voucher->voucher_dia_chi = $request->txtNCCAdress;
        $voucher->voucher_sdt = $request->txtNCCPhone;
        $voucher->save();
        return redirect()->route('admin.voucher.list')->with(['flash_level'=>'success','flash_message'=>'Thêm voucher thành công!!!']);
    }

    public function getDelete($id)
    {
        $voucher = DB::table('voucher')->where('id',$id)->delete();
        return redirect()->route('admin.voucher.list')->with(['flash_level'=>'success','flash_message'=>'Xóa voucher thành công!!!']);
    }

    public function getEdit($id)
    {
    	$data = DB::table('voucher')->where('id',$id)->first();
        return view('backend.voucher.sua',compact('data'));
    }

    public function postEdit(voucherEditRequest $request, $id)
    {
        $voucher = DB::table('voucher')->where('id',$id)->update([
            'voucher_ten'=> $request->txtNCCName,
            'voucher_dia_chi' => $request->txtNCCAdress,
            'voucher_sdt' => $request->txtNCCPhone
            ]);
        return redirect()->route('admin.voucher.list')->with(['flash_level'=>'success','flash_message'=>'Chỉnh sửa voucher thành công!!!']);
    }
}
