package com.gj.server;

/** Isolated app_process entry fixture; it does not open a shell or publish a Binder server. */
public final class GjService {
    public static void main(String[] args){com.carlito.probe.Probe.server(args);}
}
