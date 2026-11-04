.class public final synthetic Lha/ka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lha/ma;


# direct methods
.method public synthetic constructor <init>(Lha/ma;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/ka;->a:Lha/ma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lha/ka;->a:Lha/ma;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lcom/yunpan/appmanage/db/AppDao;->get_app_canStart()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 19
    .line 20
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 24
    .line 25
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 26
    .line 27
    iget-object v4, v3, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v4, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lha/ma;->i:Ljava/util/ArrayList;

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    new-instance v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 43
    .line 44
    invoke-direct {v2}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "\u5c0f\u7a0b\u5e8f"

    .line 48
    .line 49
    iput-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 50
    .line 51
    const-string v3, "com.hozonauto.netahome.mini"

    .line 52
    .line 53
    iput-object v3, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 74
    .line 75
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    add-int/lit8 v2, v2, -0x1

    .line 84
    .line 85
    :goto_2
    if-ltz v2, :cond_3

    .line 86
    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 92
    .line 93
    iget-object v3, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v4, v0, Lha/ma;->j:Ljava/util/HashSet;

    .line 96
    .line 97
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_2

    .line 102
    .line 103
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_3
    invoke-virtual {p1, v1}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lha/ka;->a:Lha/ma;

    .line 2
    .line 3
    iget-object p2, p1, Lha/ma;->k:Lha/la;

    .line 4
    .line 5
    iget-object v0, p1, Lha/ma;->h:Lx9/q3;

    .line 6
    .line 7
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/yunpan/appmanage/db/AppBean;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p1, Lha/ma;->h:Lx9/q3;

    .line 16
    .line 17
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    check-cast p3, Lcom/yunpan/appmanage/db/AppBean;

    .line 22
    .line 23
    iget-object p3, p3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {p2, v0, p3}, Lha/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
