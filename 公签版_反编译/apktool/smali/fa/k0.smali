.class public final Lfa/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lfa/o0;


# direct methods
.method public constructor <init>(Lfa/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfa/k0;->a:Lfa/o0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfa/k0;->a:Lfa/o0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lfa/o0;->a:Z

    .line 10
    .line 11
    :try_start_0
    iget-object v1, v0, Lfa/o0;->f:Lcom/bumptech/glide/manager/s;

    .line 12
    .line 13
    invoke-static {v1}, Lhi/b;->m(Lcom/bumptech/glide/manager/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 18
    .line 19
    return-void
.end method
