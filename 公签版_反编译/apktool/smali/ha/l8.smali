.class public final synthetic Lha/l8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/he;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lea/e;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;Landroid/content/Context;IILea/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/l8;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lha/l8;->b:Landroid/app/Activity;

    iput-object p3, p0, Lha/l8;->c:Landroid/content/Context;

    iput p4, p0, Lha/l8;->d:I

    iput p5, p0, Lha/l8;->e:I

    iput-object p6, p0, Lha/l8;->f:Lea/e;

    iput-object p7, p0, Lha/l8;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/l8;->g:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lha/l8;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 10
    .line 11
    iget v1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 12
    .line 13
    iget-object v2, p0, Lha/l8;->f:Lea/e;

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    iget v4, p0, Lha/l8;->d:I

    .line 17
    .line 18
    iget v5, p0, Lha/l8;->e:I

    .line 19
    .line 20
    if-ne v1, v3, :cond_0

    .line 21
    .line 22
    new-instance v0, Lha/m7;

    .line 23
    .line 24
    new-instance v1, Lha/p8;

    .line 25
    .line 26
    invoke-direct {v1, v4, v5, p1, v2}, Lha/p8;-><init>(IILcom/yunpan/appmanage/bean/KeyMapSelectBean;Lea/e;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lha/l8;->b:Landroid/app/Activity;

    .line 30
    .line 31
    iget-object v2, p0, Lha/l8;->c:Landroid/content/Context;

    .line 32
    .line 33
    invoke-direct {v0, p1, v2, v1}, Lha/m7;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/p8;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_0
    new-instance v1, Lz7/s;

    .line 41
    .line 42
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "keyType"

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v1, v3, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 52
    .line 53
    .line 54
    const-string v3, "gnType"

    .line 55
    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v1, v3, v4}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 61
    .line 62
    .line 63
    const-string v3, "name"

    .line 64
    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, "\uff1a"

    .line 74
    .line 75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v0, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v3, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v0, "int1"

    .line 91
    .line 92
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 93
    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v1, v0, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v2, v1}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    :catch_0
    :goto_0
    return-void
.end method
