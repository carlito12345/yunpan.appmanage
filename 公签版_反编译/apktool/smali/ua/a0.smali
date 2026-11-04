.class public final synthetic Lua/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityAppStorage;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/a0;->a:Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 5

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->H:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/a0;->a:Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lcom/yunpan/appmanage/db/AppDao;->get_app_storage()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/16 v3, 0x1a

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 45
    .line 46
    new-instance v4, Lx9/y;

    .line 47
    .line 48
    invoke-direct {v4, v2}, Lx9/y;-><init>(Lcom/yunpan/appmanage/db/AppBean;)V

    .line 49
    .line 50
    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    if-lt v2, v3, :cond_0

    .line 54
    .line 55
    iget-object v2, v0, Lda/g;->A:Lda/g;

    .line 56
    .line 57
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 58
    .line 59
    iget-object v3, v3, Lcom/yunpan/appmanage/util/w;->e:Ljava/util/UUID;

    .line 60
    .line 61
    invoke-static {v2, v3, v4}, Ld/b;->w(Lda/g;Ljava/util/UUID;Lx9/y;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    iget-object v2, v0, Lda/g;->A:Lda/g;

    .line 66
    .line 67
    invoke-static {v2, v4}, Ld/b;->G(Lda/g;Lx9/y;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    if-ge v1, v3, :cond_2

    .line 79
    .line 80
    const-wide/16 v1, 0x682

    .line 81
    .line 82
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    :catch_0
    :cond_2
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 86
    .line 87
    new-instance v1, Lqa/e;

    .line 88
    .line 89
    const/16 v2, 0xd

    .line 90
    .line 91
    invoke-direct {v1, v2}, Lqa/e;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lua/a0;->a:Lcom/yunpan/appmanage/ui/ActivityAppStorage;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->F:Lha/o2;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lx9/y;

    .line 12
    .line 13
    iget-object p1, p1, Lx9/y;->a:Lcom/yunpan/appmanage/db/AppBean;

    .line 14
    .line 15
    invoke-virtual {p2, p3, p1}, Lha/o2;->e(ILcom/yunpan/appmanage/db/AppBean;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
