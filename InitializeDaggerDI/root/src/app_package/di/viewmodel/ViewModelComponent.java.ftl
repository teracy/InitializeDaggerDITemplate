package ${packageName}.di.viewmodel;

import android.arch.lifecycle.ViewModel;

import dagger.MembersInjector;

public interface ViewModelComponent<T extends ViewModel> extends MembersInjector<T> {
}
