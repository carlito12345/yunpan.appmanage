.class public final synthetic Lha/s8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ga;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Lea/e;


# direct methods
.method public synthetic constructor <init>(IILjava/util/ArrayList;ILjava/util/ArrayList;Lea/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lha/s8;->a:I

    iput p2, p0, Lha/s8;->b:I

    iput-object p3, p0, Lha/s8;->c:Ljava/util/ArrayList;

    iput p4, p0, Lha/s8;->d:I

    iput-object p5, p0, Lha/s8;->e:Ljava/util/ArrayList;

    iput-object p6, p0, Lha/s8;->f:Lea/e;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 8

    .line 1
    iget v0, p0, Lha/s8;->a:I

    .line 2
    .line 3
    iget v1, p0, Lha/s8;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lha/s8;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget v3, p0, Lha/s8;->d:I

    .line 8
    .line 9
    iget-object v4, p0, Lha/s8;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v5, p0, Lha/s8;->f:Lea/e;

    .line 12
    .line 13
    :try_start_0
    new-instance v6, Lz7/s;

    .line 14
    .line 15
    invoke-direct {v6}, Lz7/s;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v7, "keyType"

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v6, v7, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "gnType"

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v6, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "name"

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " - "

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v6, v0, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "type1"

    .line 76
    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v6, v0, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "type2"

    .line 85
    .line 86
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 91
    .line 92
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 93
    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v6, v0, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v5, v6}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    :catch_0
    return-void
.end method
