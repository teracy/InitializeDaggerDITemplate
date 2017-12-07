package ${packageName}.di.viewmodel;

public interface ViewModelComponentBuilder<M extends ViewModelModule, C extends ViewModelComponent> {
    ViewModelComponentBuilder<M, C> getBuilder(M viewModelModule);

    C build();
}
