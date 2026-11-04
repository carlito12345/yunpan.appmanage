.class public final synthetic Lua/i6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/g;
.implements Lu9/b;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityShell;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/i6;->a:Lcom/yunpan/appmanage/ui/ActivityShell;

    iput p2, p0, Lua/i6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfa/i;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lua/i6;->a:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 4
    .line 5
    new-instance v2, Lx9/j1;

    .line 6
    .line 7
    const-string v3, "adb\u6267\u884c"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v3, p0, Lua/i6;->b:I

    .line 13
    .line 14
    invoke-virtual {v1, v3, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Lfa/i;->b:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "\u672a\u8fde\u63a5"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 28
    .line 29
    const-string v1, "\u6b63\u5728\u5c1d\u8bd5\u8fde\u63a5adb...\n"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lfa/h;->a:Lfa/j;

    .line 35
    .line 36
    new-instance v1, Lua/h6;

    .line 37
    .line 38
    const/4 v2, 0x5

    .line 39
    invoke-direct {v1, v0, v2}, Lua/h6;-><init>(Lcom/yunpan/appmanage/ui/ActivityShell;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lfa/j;->h(Lua/h6;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object p1, p1, Lfa/i;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    const-string v1, ""

    .line 49
    .line 50
    const/4 v2, 0x0

    .line 51
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-ge v2, v3, :cond_1

    .line 56
    .line 57
    invoke-static {v1}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Ljava/lang/String;

    .line 66
    .line 67
    const-string v4, "\n"

    .line 68
    .line 69
    invoke-static {v3, v4, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    return-void
.end method

.method public n(Landroidx/room/s;)V
    .locals 5

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityShell;->M:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/i6;->a:Lcom/yunpan/appmanage/ui/ActivityShell;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Landroidx/room/s;->j()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const-string v4, "\n"

    .line 31
    .line 32
    if-ge v2, v3, :cond_0

    .line 33
    .line 34
    invoke-static {v1}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v3, v4, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget v2, p1, Landroidx/room/s;->b:I

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    const-string p1, "\u6267\u884c\u6210\u529f\n"

    .line 60
    .line 61
    invoke-static {v1, p1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const-string v2, "\u6267\u884c\u5b8c\u6bd5\uff0c\u8fd4\u56de\u7ed3\u679c\u4ee3\u7801\uff1a"

    .line 67
    .line 68
    invoke-static {v1, v2}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget p1, p1, Landroidx/room/s;->b:I

    .line 73
    .line 74
    invoke-static {v1, p1, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_1
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->D:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityShell;->G:Lx9/v4;

    .line 84
    .line 85
    new-instance v0, Lx9/j1;

    .line 86
    .line 87
    const-string v1, "\u672c\u673a\u6267\u884c"

    .line 88
    .line 89
    invoke-direct {v0, v1}, Lx9/j1;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget v1, p0, Lua/i6;->b:I

    .line 93
    .line 94
    invoke-virtual {p1, v1, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
