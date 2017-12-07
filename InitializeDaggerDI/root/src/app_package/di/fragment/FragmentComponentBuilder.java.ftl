package ${packageName}.di.fragment;

public interface FragmentComponentBuilder<M extends FragmentModule, C extends FragmentComponent> {
    FragmentComponentBuilder<M, C> getBuilder(M fragmentModule);
    C build();
}
