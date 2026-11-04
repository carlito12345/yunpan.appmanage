.class public final synthetic Lua/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/a1;->a:I

    iput-object p1, p0, Lua/a1;->b:Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lua/a1;->b:Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;

    .line 4
    .line 5
    iget v2, p0, Lua/a1;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->F:I

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    .line 21
    .line 22
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ge p1, v3, :cond_2

    .line 27
    .line 28
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;

    .line 35
    .line 36
    iget-boolean v4, v3, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->pack:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-boolean v4, v3, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSystem:Z

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    iput-boolean v0, v3, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    .line 51
    .line 52
    iget-object v4, v1, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    .line 53
    .line 54
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 55
    .line 56
    .line 57
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->pack:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_1
    add-int/2addr p1, v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 65
    .line 66
    iget-object v0, p1, Lwa/u;->w:Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lwa/u;->j()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_0
    const/4 v2, 0x0

    .line 79
    :goto_2
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    .line 80
    .line 81
    invoke-virtual {v3}, Lc6/g;->b()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-ge v2, v3, :cond_4

    .line 86
    .line 87
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    .line 88
    .line 89
    invoke-virtual {v3, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;

    .line 94
    .line 95
    iget-boolean v4, v3, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    .line 96
    .line 97
    if-eqz v4, :cond_3

    .line 98
    .line 99
    iput-boolean p1, v3, Lcom/yunpan/appmanage/bean/NamePackBoolSelectBean;->isSelected:Z

    .line 100
    .line 101
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 104
    .line 105
    .line 106
    :cond_3
    add-int/2addr v2, v0

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    sget-object p1, Lwa/t;->a:Lwa/u;

    .line 109
    .line 110
    iget-object v0, p1, Lwa/u;->w:Ljava/util/HashSet;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lwa/u;->j()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->F:I

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
