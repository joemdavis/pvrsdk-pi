package com.powervr.OGLES3IntroducingPrint3D;

import android.app.NativeActivity;
import android.os.Bundle;
import android.widget.Toast;
import android.view.Gravity;

public class OGLES3IntroducingPrint3D extends NativeActivity
{
    @Override
    protected void onCreate (Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
    }

    public void displayExitMessage(final String text) 
    {
        runOnUiThread(new Runnable() {
	    public void run() {
	    	Toast toast = Toast.makeText(getApplicationContext(), text, Toast.LENGTH_LONG);
	    	toast.setGravity(Gravity.CENTER, 0, 0);
	    	toast.show();
	    }
        });
    }
}
