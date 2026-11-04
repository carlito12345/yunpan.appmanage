.class public final Lx9/t2;
.super Lc6/g;
.source "SourceFile"

# interfaces
.implements Le6/a;


# instance fields
.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lx9/t2;->h:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e015d

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lh6/a;

    .line 2
    .line 3
    check-cast p3, Lz7/s;

    .line 4
    .line 5
    :try_start_0
    iget-object p2, p0, Lx9/t2;->h:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const v0, 0x7f0b05ac

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_5

    .line 15
    .line 16
    const-string p2, "keyType"

    .line 17
    .line 18
    invoke-virtual {p3, p2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lz7/p;->e()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const-string v1, ""

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    const-string v1, "\u5355\u51fb\u64cd\u4f5c\uff1a"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x1

    .line 34
    if-ne p2, v2, :cond_1

    .line 35
    .line 36
    const-string v1, "\u53cc\u51fb\u64cd\u4f5c\uff1a"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x2

    .line 40
    if-ne p2, v2, :cond_2

    .line 41
    .line 42
    const-string v1, "\u957f\u6309\u64cd\u4f5c\uff1a"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v2, 0x3

    .line 46
    if-ne p2, v2, :cond_3

    .line 47
    .line 48
    const-string v1, "\u7ec4\u5408\u64cd\u4f5c\uff1a"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v2, -0x1

    .line 52
    if-ne p2, v2, :cond_4

    .line 53
    .line 54
    const-string v1, "\u6620\u5c04\u64cd\u4f5c\uff1a"

    .line 55
    .line 56
    :cond_4
    :goto_0
    invoke-virtual {p1, v0, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    iget-object p2, p0, Lx9/t2;->h:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1, v0, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    const-string p2, "name"

    .line 66
    .line 67
    invoke-virtual {p3, p2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p2}, Lz7/p;->i()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const p3, 0x7f0b0593

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p3, p2}, Lh6/a;->c(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    :catch_0
    return-void
.end method
