using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;


/// <summary>
/// Summary description for Registration
/// </summary>

namespace Travel_Agency.Controller
{
    public class Registration
    {

        private SerialPort _serialport;
        public Registration()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public void ports(String Mobile, String Status)
        {
            string number = Mobile;
            string msg = Status;

            _serialport = new SerialPort("COM6", 115200);
            Thread.Sleep(1500);
            _serialport.Open();
            Thread.Sleep(1500);
            Thread.Sleep(1500);
            _serialport.Write("AT+CMGF=1\r");
            Thread.Sleep(1500);
            Thread.Sleep(1500);
            _serialport.Write("AT+CMGS=\"" + number + "\"\r\n");
            Thread.Sleep(1500);
            Thread.Sleep(1500);
            _serialport.Write(msg + "\x1A");
            Thread.Sleep(1500);
            Thread.Sleep(1500);
            _serialport.Close();
        }

    }
}