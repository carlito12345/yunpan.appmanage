.class public final synthetic Lha/k8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/he;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lea/e;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;IILjava/lang/String;Lea/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/k8;->a:Ljava/util/ArrayList;

    iput p2, p0, Lha/k8;->b:I

    iput p3, p0, Lha/k8;->c:I

    iput-object p4, p0, Lha/k8;->d:Ljava/lang/String;

    iput-object p5, p0, Lha/k8;->e:Lea/e;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/k8;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 8
    .line 9
    new-instance v0, Lz7/s;

    .line 10
    .line 11
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lha/k8;->b:I

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "keyType"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lha/k8;->c:I

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "gnType"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lha/k8;->d:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "\uff08"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v2, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, "\uff09"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "name"

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 71
    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v1, "streamType"

    .line 77
    .line 78
    invoke-virtual {v0, v1, p1}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lha/k8;->e:Lea/e;

    .line 82
    .line 83
    invoke-interface {p1, v0}, Lea/e;->k(Lz7/s;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
