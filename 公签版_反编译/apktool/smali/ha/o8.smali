.class public final synthetic Lha/o8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ga;


# instance fields
.field public final synthetic a:Lz7/s;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lea/e;


# direct methods
.method public synthetic constructor <init>(Lz7/s;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lea/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/o8;->a:Lz7/s;

    iput-object p2, p0, Lha/o8;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lha/o8;->c:Landroid/app/Activity;

    iput-object p4, p0, Lha/o8;->d:Landroid/content/Context;

    iput-object p5, p0, Lha/o8;->e:Ljava/lang/String;

    iput-object p6, p0, Lha/o8;->f:Lea/e;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 13

    .line 1
    iget-object v3, p0, Lha/o8;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 8
    .line 9
    iget v0, v0, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lha/o8;->a:Lz7/s;

    .line 16
    .line 17
    const-string v2, "mouseType"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Lha/o8;->f:Lea/e;

    .line 23
    .line 24
    iget-object v2, p0, Lha/o8;->e:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    :try_start_0
    const-string v0, "name"

    .line 33
    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "\uff1a"

    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, v0, p1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v5, v1}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    new-instance v12, Lha/w6;

    .line 70
    .line 71
    new-instance v11, Lha/r8;

    .line 72
    .line 73
    move-object v0, v11

    .line 74
    move v4, p1

    .line 75
    invoke-direct/range {v0 .. v5}, Lha/r8;-><init>(Lz7/s;Ljava/lang/String;Ljava/util/ArrayList;ILea/e;)V

    .line 76
    .line 77
    .line 78
    iget-object v7, p0, Lha/o8;->c:Landroid/app/Activity;

    .line 79
    .line 80
    iget-object v8, p0, Lha/o8;->d:Landroid/content/Context;

    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x1

    .line 84
    move-object v6, v12

    .line 85
    invoke-direct/range {v6 .. v11}, Lha/w6;-><init>(Landroid/app/Activity;Landroid/content/Context;ZZLha/v6;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v12}, Lha/a4;->show()V

    .line 89
    .line 90
    .line 91
    :catch_0
    :goto_1
    return-void
.end method
