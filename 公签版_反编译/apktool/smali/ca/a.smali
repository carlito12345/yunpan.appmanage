.class public final synthetic Lca/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lca/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lca/a;->b:Ljava/io/File;

    iput-object p2, p0, Lca/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lca/a;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lgf/g;)V
    .locals 0

    .line 2
    const/4 p4, 0x0

    iput p4, p0, Lca/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lca/a;->b:Ljava/io/File;

    iput-object p2, p0, Lca/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lca/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 3

    .line 1
    iget v0, p0, Lca/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lca/a;->b:Ljava/io/File;

    .line 7
    .line 8
    iget-object v1, p0, Lca/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lca/a;->d:Ljava/lang/String;

    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2, p1}, Lza/g;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lca/a;->b:Ljava/io/File;

    .line 36
    .line 37
    iget-object v1, p0, Lca/a;->c:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v2, p0, Lca/a;->d:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-static {v0, v1, v2, p1}, Lif/a;->w(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lmc/b;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    .line 60
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
