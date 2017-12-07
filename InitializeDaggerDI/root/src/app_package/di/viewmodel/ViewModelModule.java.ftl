package ${packageName}.di.viewmodel;

import android.arch.lifecycle.ViewModel;

import dagger.Module;
import dagger.Provides;
import ${packageName}.di.scope.ViewModelScope;

@Module
public abstract class ViewModelModule<T extends ViewModel> {
    protected T viewModel;

    public ViewModelModule(T viewModel) {
        this.viewModel = viewModel;
    }

    @Provides
    @ViewModelScope
    T provideViewModel() {
        return viewModel;
    }

    // NOTE: Add dependencies here
}
