.class public final synthetic Lha/r8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/v6;


# instance fields
.field public final synthetic a:Lz7/s;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:I

.field public final synthetic e:Lea/e;


# direct methods
.method public synthetic constructor <init>(Lz7/s;Ljava/lang/String;Ljava/util/ArrayList;ILea/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/r8;->a:Lz7/s;

    iput-object p2, p0, Lha/r8;->b:Ljava/lang/String;

    iput-object p3, p0, Lha/r8;->c:Ljava/util/ArrayList;

    iput p4, p0, Lha/r8;->d:I

    iput-object p5, p0, Lha/r8;->e:Lea/e;

    return-void
.end method


# virtual methods
.method public final b(Lcom/yunpan/appmanage/bean/KeyMapSelectBean;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;II)V
    .locals 6

    .line 1
    iget-object p1, p0, Lha/r8;->a:Lz7/s;

    .line 2
    .line 3
    iget-object v0, p0, Lha/r8;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lha/r8;->c:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget v2, p0, Lha/r8;->d:I

    .line 8
    .line 9
    iget-object v3, p0, Lha/r8;->e:Lea/e;

    .line 10
    .line 11
    :try_start_0
    const-string v4, "name"

    .line 12
    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, "-"

    .line 22
    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "\uff1a"

    .line 38
    .line 39
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v0, p2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, "("

    .line 48
    .line 49
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, ","

    .line 56
    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ")"

    .line 64
    .line 65
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v4, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "action"

    .line 76
    .line 77
    iget p2, p2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 78
    .line 79
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p1, v0, p2}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 84
    .line 85
    .line 86
    const-string p2, "x"

    .line 87
    .line 88
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p1, p2, p3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 93
    .line 94
    .line 95
    const-string p2, "y"

    .line 96
    .line 97
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p1, p2, p3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v3, p1}, Lea/e;->k(Lz7/s;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    :catch_0
    return-void
.end method
