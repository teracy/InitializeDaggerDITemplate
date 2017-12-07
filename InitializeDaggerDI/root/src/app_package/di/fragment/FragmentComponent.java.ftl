package ${packageName}.di.fragment;

import android.support.v4.app.Fragment;

import dagger.MembersInjector;

public interface FragmentComponent<T extends Fragment> extends MembersInjector<T> {
}
