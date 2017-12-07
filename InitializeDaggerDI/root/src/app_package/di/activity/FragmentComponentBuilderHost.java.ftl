package ${packageName}.di.activity;

import android.support.v4.app.Fragment;

import ${packageName}.di.fragment.FragmentComponentBuilder;

public interface FragmentComponentBuilderHost {
    <T extends FragmentComponentBuilder> T getFragmentComponentBuilder(Fragment fragment);
}
