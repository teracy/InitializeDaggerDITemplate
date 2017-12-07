package ${packageName}.di.fragment;

import android.support.v4.app.Fragment;

import dagger.Module;
import dagger.Provides;
import ${packageName}.di.scope.FragmentScope;

@Module
public abstract class FragmentModule<T extends Fragment> {
    protected T fragment;

    public FragmentModule(T fragment) {
        this.fragment = fragment;
    }

    @Provides
    @FragmentScope
    T provideFragment() {
        return fragment;
    }

    // NOTE: Add dependencies here
}
