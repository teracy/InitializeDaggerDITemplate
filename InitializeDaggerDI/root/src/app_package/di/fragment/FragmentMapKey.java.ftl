package ${packageName}.di.fragment;

import android.support.v4.app.Fragment;

import dagger.MapKey;

@MapKey
public @interface FragmentMapKey {
    Class<? extends Fragment> value();
}
