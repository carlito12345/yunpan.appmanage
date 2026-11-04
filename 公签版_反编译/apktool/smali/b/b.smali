.class public final Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(ILjava/io/Serializable;)V
    .locals 0

    .line 1
    iput p1, p0, Lb/b;->a:I

    iput-object p2, p0, Lb/b;->b:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lb/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb/b;->b:Ljava/io/Serializable;

    .line 7
    .line 8
    check-cast v0, Lc/a;

    .line 9
    .line 10
    const-string v1, "KeyFactory.EC"

    .line 11
    .line 12
    const-string v2, "sun.security.ec.ECKeyFactory"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v1, "AlgorithmParameters.EC"

    .line 18
    .line 19
    const-string v2, "sun.security.ec.ECParameters"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v1, "Alg.Alias.AlgorithmParameters.1.2.840.10045.2.1"

    .line 25
    .line 26
    const-string v2, "EC"

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    return-object v0

    .line 33
    :pswitch_0
    iget-object v0, p0, Lb/b;->b:Ljava/io/Serializable;

    .line 34
    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    :cond_0
    return-object v0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
