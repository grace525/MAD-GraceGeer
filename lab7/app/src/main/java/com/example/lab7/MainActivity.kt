package com.example.lab7

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.*
import androidx.constraintlayout.widget.ConstraintLayout
import com.google.android.material.snackbar.Snackbar
import com.google.android.material.switchmaterial.SwitchMaterial

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

//    private fun createSnackBar() {
//        var snackbar = Snackbar.make(findViewById(R.id.layout), "hello", 10)
//        val textView = snackbar.view.findViewById<TextView>(com.google.android.material.R.id.snackbar_text)
//        textView.text = "You've placed your order!"
//        snackbar.setAction("Cancel Order", View.OnClickListener {
//            snackbar.dismiss()
//        })
//        snackbar.show() //use this on the place order button
//    }




    fun submitOrder(view: View) {
        var value : CharSequence = ""
        var chooseSide = ""

        val sandwichType = findViewById<RadioGroup>(R.id.sandwichType)
        val appLayout = findViewById<ConstraintLayout>(R.id.layout)
        val type = sandwichType.checkedRadioButtonId
        val newMessage = findViewById<TextView>(R.id.finalMessage)
        val box1 = findViewById<CheckBox>(R.id.box1)
        val box2 = findViewById<CheckBox>(R.id.box2)
        val spinner = findViewById<Spinner>(R.id.spinner)
        val switch = findViewById<Switch>(R.id.spicySwitch)

        if (type == -1) {
            Log.i("if statement", "$type")
            //snackbar!
            val typeSnackbar = Snackbar.make(appLayout, "Please select a sandwich type", Snackbar.LENGTH_SHORT)
            //typeSnackbar.show()
        } else {
//            value = findViewById<RadioButton>(type).text
//            //textview
//            newMessage.text = "You'd like a $value sandwich. "
            Log.i("else statement", "$type")
            value = findViewById<RadioButton>(type).text

            //checkboxes
            if (box1.isChecked) {
                chooseSide += " " + box1.text
            }
            if (box2.isChecked) {
                chooseSide += " " + box2.text
            }

            //spinner
            val spinnerLocation = "" + spinner.selectedItem

            if (switch.isChecked) {
                value = switch.text.toString() + " $value"
            }
            //change the textView
            newMessage.text = "You'd like a $spinnerLocation $value sandwich with $chooseSide"
        }


    }
}