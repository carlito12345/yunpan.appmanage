.class public final synthetic Lza/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lza/b;->a:I

    iput-object p1, p0, Lza/b;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lza/b;->c:Ljava/io/File;

    iput-object p3, p0, Lza/b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 4

    .line 1
    iget v0, p0, Lza/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lza/b;->c:Ljava/io/File;

    .line 7
    .line 8
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->s0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    iget-object v2, p0, Lza/b;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v3, p0, Lza/b;->d:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-static {v2, v0, v3, p1}, Ld/b;->l(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;Lmc/b;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v2, v0, v3, p1}, Lza/g;->c(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;Lmc/b;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Lcom/yunpan/appmanage/db/MyDb;->addIfFile(Ljava/io/File;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    move-exception v1

    .line 37
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 38
    .line 39
    .line 40
    :catch_1
    invoke-virtual {p1, v1}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lza/b;->c:Ljava/io/File;

    .line 45
    .line 46
    :try_start_3
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 47
    .line 48
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->s0:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 49
    .line 50
    iget-object v2, p0, Lza/b;->b:Ljava/util/ArrayList;

    .line 51
    .line 52
    iget-object v3, p0, Lza/b;->d:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    :try_start_4
    invoke-static {v2, v0, v3, p1}, Ld/b;->m(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;Lmc/b;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catch_2
    move-exception v1

    .line 61
    goto :goto_3

    .line 62
    :cond_1
    invoke-static {v2, v0, v3, p1}, Lza/g;->d(Ljava/util/ArrayList;Ljava/io/File;Ljava/lang/String;Lmc/b;)V

    .line 63
    .line 64
    .line 65
    :goto_2
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 70
    .line 71
    .line 72
    :catch_3
    invoke-virtual {p1, v1}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_4
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
