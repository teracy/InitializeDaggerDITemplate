package ${packageName}.view.activity

import android.os.Bundle
import android.support.v4.app.Fragment
import android.support.v7.app.AppCompatActivity
import android.widget.TextView
import ${packageName}.R
import ${packageName}.di.DaggerUtil
import ${packageName}.di.activity.FragmentComponentBuilderHost
import ${packageName}.di.fragment.FragmentComponentBuilder
import ${packageName}.view.fragment.SampleFragment
import javax.inject.Inject

class SampleActivity : AppCompatActivity(), FragmentComponentBuilderHost {
    @Inject lateinit var sampleText: String

    private var activityComponent: SampleActivityComponent? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_sample)
        activityComponent = DaggerUtil.getComponentBuilder<SampleActivityComponent.Builder>(this)
                .getBuilder(SampleActivityComponent.SampleActivityModule(this))
                .build()
        activityComponent?.injectMembers(this)
        findViewById<TextView>(R.id.text).setText(sampleText)

        val transaction = supportFragmentManager.beginTransaction()
        transaction.replace(R.id.container, SampleFragment.newInstance())
        transaction.commit()
    }

    @Suppress("UNCHECKED_CAST")
    override fun <T : FragmentComponentBuilder<*, *>> getFragmentComponentBuilder(fragment: Fragment): T {
        return activityComponent?.getFragmentComponentBuilders()?.get(fragment::class.java) as T
    }
}
