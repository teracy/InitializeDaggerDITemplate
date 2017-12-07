package ${packageName}.view.fragment


import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import ${packageName}.R
import ${packageName}.di.activity.FragmentComponentBuilderHost
import javax.inject.Inject


class SampleFragment : Fragment() {
    @Inject
    lateinit var sampleText: String

    override fun onCreateView(inflater: LayoutInflater?, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        super.onCreateView(inflater, container, savedInstanceState)
         (activity as FragmentComponentBuilderHost)
                .getFragmentComponentBuilder<SampleFragmentComponent.Builder>(this)
                .build()
                .injectMembers(this)

        val view = inflater?.inflate(R.layout.fragment_sample, container, false)
        val textView = view?.findViewById<TextView>(R.id.text)
        textView?.setText(sampleText)
        return view
    }

    companion object {
        fun newInstance(): SampleFragment {
            val fragment = SampleFragment()
            fragment.arguments = Bundle()
            return fragment
        }
    }

}// Required empty public constructor
