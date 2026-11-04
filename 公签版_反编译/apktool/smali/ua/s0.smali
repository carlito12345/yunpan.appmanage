.class public final synthetic Lua/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/s0;->a:I

    iput-object p1, p0, Lua/s0;->b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lua/s0;->b:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 2
    .line 3
    iget v0, p0, Lua/s0;->a:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lha/m4;

    .line 14
    .line 15
    invoke-direct {v0, p1, p1}, Lha/m4;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Lha/z6;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p1, Lda/g;->A:Lda/g;

    .line 35
    .line 36
    const v3, 0x7f13016f

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "\u5f80\u5f80\u4f1a\u6bd4\u684c\u9762\u66f4\u5feb\u542f\u52a8,\u5982\u679c\u6267\u884c\u4e86\u5f00\u673a\u4efb\u52a1\u4e4b\u540e,\u684c\u9762\u624d\u6253\u5f00\u7684\u8bdd,\u90a3\u4e48\u4f60\u5148\u6253\u5f00\u7684\u5e94\u7528\u5c31\u4f1a\u88ab\u684c\u9762\u8986\u76d6\uff0c\u6216\u65e0\u6cd5\u6253\u5f00\u4efb\u52a1\u91cc\u7684\u5e94\u7528\uff01\u5982\u679c\u60a8\u6709\u65f6\u5019\u884c\u6709\u65f6\u5019\u4e0d\u884c,\u90a3\u80af\u5b9a\u662f\u5ef6\u65f6\u4e0d\u8db3\uff01\u8bf7\u5728\u3010\u8bbe\u7f6e\u3011\u91cc\u8bbe\u7f6e\u5f00\u673a\u540e\u5ef6\u65f6\uff01"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "\u8981\u5b66\u4f1a\u7075\u6d3b\u4f7f\u7528\"\u5ef6\u65f6\"\u548c\"\u63d0\u793a\"\u529f\u80fd\uff0c\u80fd\u89e3\u51b3\u60a8\u5f88\u591a\u56f0\u60d1"

    .line 56
    .line 57
    invoke-direct {v0, p1, p1, v1, v2}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_1
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 65
    .line 66
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->E:Lx9/i0;

    .line 74
    .line 75
    new-instance v1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p1, Lda/g;->A:Lda/g;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-static {v0, v1}, Lq4/a;->P(Lda/g;Lz7/o;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lz7/o;

    .line 90
    .line 91
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v0, p1, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->F:Lz7/o;

    .line 95
    .line 96
    :goto_0
    return-void

    .line 97
    :pswitch_2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance v0, Lha/j4;

    .line 103
    .line 104
    new-instance v1, Lua/u0;

    .line 105
    .line 106
    invoke-direct {v1, p1}, Lua/u0;-><init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, p1, p1, v1}, Lha/j4;-><init>(Landroid/app/Activity;Landroid/content/Context;Lua/u0;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_3
    sget v0, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
