.class public final Lua/n8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/x4;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/bean/FileCopyBean;

.field public final synthetic c:Lua/q8;


# direct methods
.method public synthetic constructor <init>(Lua/q8;Lcom/yunpan/appmanage/bean/FileCopyBean;I)V
    .locals 0

    .line 1
    iput p3, p0, Lua/n8;->a:I

    iput-object p1, p0, Lua/n8;->c:Lua/q8;

    iput-object p2, p0, Lua/n8;->b:Lcom/yunpan/appmanage/bean/FileCopyBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Lua/n8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/n8;->b:Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    :goto_0
    if-ltz v1, :cond_1

    .line 17
    .line 18
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lx9/w3;

    .line 25
    .line 26
    iget-object v2, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 27
    .line 28
    const-string v3, "\u8df3\u8fc7"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lua/n8;->c:Lua/q8;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lua/q8;->s(Lcom/yunpan/appmanage/bean/FileCopyBean;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lua/n8;->b:Lcom/yunpan/appmanage/bean/FileCopyBean;

    .line 51
    .line 52
    iget-object v1, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/lit8 v1, v1, -0x1

    .line 59
    .line 60
    :goto_1
    if-ltz v1, :cond_3

    .line 61
    .line 62
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lx9/w3;

    .line 69
    .line 70
    iget-object v2, v2, Lx9/w3;->j:Ljava/lang/String;

    .line 71
    .line 72
    const-string v3, "\u8df3\u8fc7"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_2

    .line 79
    .line 80
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/FileCopyBean;->files:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    iget-object v1, p0, Lua/n8;->c:Lua/q8;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Lua/q8;->t(Lcom/yunpan/appmanage/bean/FileCopyBean;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lua/n8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/n8;->c:Lua/q8;

    .line 7
    .line 8
    iget-object v1, v0, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lua/q8;->K:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lua/n8;->c:Lua/q8;

    .line 21
    .line 22
    iget-object v1, v0, Lua/q8;->I:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lua/q8;->K:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
