package ${packageName}.di.activity

import android.support.v4.app.Fragment
import ${packageName}.di.fragment.FragmentComponentBuilder

interface FragmentComponentBuilderHost {
    fun <T : FragmentComponentBuilder<*, *>> getFragmentComponentBuilder(fragment: Fragment): T;
}
