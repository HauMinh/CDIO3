using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using CDIO3.App_code;

public class GIOHANG
{
   
        Dictionary<String, DataRow> CART;

        public GIOHANG()
        {
            CART = new Dictionary<string, DataRow>();
        }

        public Boolean Additem(DataRow itemRow, int soluongton)
        {

            bool tran = false;
            String key = itemRow["masp"].ToString();
            if (CART.ContainsKey(key))
            {
                int soluongmua = Convert.ToInt32(CART[key]["SOLUONGmua"].ToString()) +
                    Convert.ToInt32(itemRow["SOLUONGmua"].ToString());
                if (soluongmua <= soluongton)
                {
                    CART[key]["SOLUONGmua"] = Convert.ToInt32(CART[key]["SOLUONGmua"].ToString()) +
                        Convert.ToInt32(itemRow["SOLUONGmua"].ToString());
                    tran = true;
                }
                else tran = false;
            }
            else
            {
                CART.Add(key, itemRow);
                tran = true;
            }

            return tran;
        }
        public void DeleteItem(String key)
        {
            CART.Remove(key);
        }
        public double tinhTongTien()
        {
            double tongtien = 0;
            foreach (DataRow row in CART.Values)
                tongtien = tongtien + Convert.ToInt32(row["SOLUONGmua"].ToString()) * Convert.ToInt32(row["GIA"].ToString());
            return tongtien;
        }
        public DataTable DSGioHang()
        {
            DataTable tb = new DataTable();
            //XLDL xldl = new XLDL();
        // tb = xldl.LayBang("select* from sanpham, khuyenmai");
        tb.Columns.Add("masp", typeof(String));
        tb.Columns.Add("tensanpham", typeof(String));
        tb.Columns.Add("SOLUONGmua", typeof(int));
        tb.Columns.Add("GIA", typeof(double));
        tb.Columns.Add("HINHANH", typeof(String));
        tb.Columns.Add("mausac", typeof(String));
        tb.Columns.Add("bonhotrong", typeof(String));
        tb.Columns.Add("Noidungkhuyenmai", typeof(String));
        tb.Columns.Add("THANHTIEN", typeof(double));
        foreach (DataRow row in CART.Values)
        {
            DataRow rowItem = tb.NewRow();
            rowItem["masp"] = row["masp"];
            rowItem["tensanpham"] = row["tensanpham"];
            rowItem["SOLUONGmua"] = row["SOLUONGmua"];
            rowItem["GIA"] = row["GIA"];
            rowItem["HINHANH"] = row["HINHANH"];
            rowItem["mausac"] = row["mausac"];
            rowItem["bonhotrong"] = row["bonhotrong"];
            rowItem["Noidungkhuyenmai"] = row["Noidungkhuyenmai"];
            rowItem["THANHTIEN"] = Convert.ToInt32(row["SOLUONGmua"].ToString())
                * Convert.ToInt32(row["GIA"].ToString());
            tb.Rows.Add(rowItem);
        }
        return tb;
        }
    
}