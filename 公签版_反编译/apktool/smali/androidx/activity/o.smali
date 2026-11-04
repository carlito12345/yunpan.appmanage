.class public final Landroidx/activity/o;
.super Lue/e;
.source "SourceFile"

# interfaces
.implements Lte/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/w;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/activity/o;->a:I

    iput-object p1, p0, Landroidx/activity/o;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lue/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lc4/d;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/activity/o;->a:I

    .line 2
    iput-object p1, p0, Landroidx/activity/o;->b:Ljava/lang/Object;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lue/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/activity/o;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroidx/activity/b;

    .line 7
    .line 8
    const-string v0, "backEvent"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/activity/o;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Landroidx/activity/w;

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/activity/w;->b:Lje/h;

    .line 18
    .line 19
    invoke-virtual {p1}, Lje/e;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v1, v0

    .line 38
    check-cast v1, Landroidx/fragment/app/u0;

    .line 39
    .line 40
    iget-boolean v1, v1, Landroidx/fragment/app/u0;->a:Z

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    check-cast v0, Landroidx/fragment/app/u0;

    .line 47
    .line 48
    sget-object p1, Lie/e;->c:Lie/e;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_0
    check-cast p1, Landroidx/activity/b;

    .line 52
    .line 53
    const-string v0, "backEvent"

    .line 54
    .line 55
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Landroidx/activity/o;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Landroidx/activity/w;

    .line 61
    .line 62
    iget-object v0, p1, Landroidx/activity/w;->b:Lje/h;

    .line 63
    .line 64
    invoke-virtual {v0}, Lje/e;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    move-object v2, v1

    .line 83
    check-cast v2, Landroidx/fragment/app/u0;

    .line 84
    .line 85
    iget-boolean v2, v2, Landroidx/fragment/app/u0;->a:Z

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/4 v1, 0x0

    .line 91
    :goto_1
    check-cast v1, Landroidx/fragment/app/u0;

    .line 92
    .line 93
    iput-object v1, p1, Landroidx/activity/w;->c:Landroidx/fragment/app/u0;

    .line 94
    .line 95
    sget-object p1, Lie/e;->c:Lie/e;

    .line 96
    .line 97
    return-object p1

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
