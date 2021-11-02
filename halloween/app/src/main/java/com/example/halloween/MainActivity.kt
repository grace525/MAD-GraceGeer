package com.example.halloween

import android.os.Bundle
import android.widget.EditText
import android.widget.ImageView
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun sayBoo(view: android.view.View) {
        val booText = findViewById<TextView>(R.id.textMessage)
        val changeThis = findViewById<TextView>(R.id.newText)
//        val booImage = findViewById<ImageView>(R.id.imageView)
        val editName = findViewById<EditText>(R.id.editTextName)
        val name = editName.text
        booText.text = "Happy Halloween " + name + "!"
        changeThis.text = "You pressed the button!"
        val imageSkull = findViewById<ImageView>(R.id.imageView)
        imageSkull.setImageResource(R.drawable.skull)
//        booImage.setBackgroundResource = (R.drawable.skull)



//        val imageGhost = findViewById<ImageView>(R.id.imageView)
//        imageGhost.setImageResource(R.drawable.ghost)
    }
}