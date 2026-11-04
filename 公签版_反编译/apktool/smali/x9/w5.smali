.class public final synthetic Lx9/w5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx9/y5;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lx9/y5;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 0

    .line 1
    iput p4, p0, Lx9/w5;->a:I

    iput-object p1, p0, Lx9/w5;->b:Lx9/y5;

    iput-object p2, p0, Lx9/w5;->c:Ljava/lang/String;

    iput-object p3, p0, Lx9/w5;->d:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lx9/w5;->d:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lx9/w5;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lx9/w5;->b:Lx9/y5;

    .line 6
    .line 7
    iget v3, p0, Lx9/w5;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v2, v2, Lx9/y5;->i:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 23
    .line 24
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 25
    .line 26
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->R:I

    .line 27
    .line 28
    invoke-virtual {v1, v2, v2}, Lw5/a;->o(II)Lw5/a;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/bumptech/glide/m;

    .line 33
    .line 34
    const v2, 0x7f08020f

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lw5/a;->g(I)Lw5/a;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/bumptech/glide/m;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    iget-object v2, v2, Lx9/y5;->i:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {v2}, Lcom/bumptech/glide/b;->f(Landroid/content/Context;)Lcom/bumptech/glide/p;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/p;->u(Ljava/lang/String;)Lcom/bumptech/glide/m;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 58
    .line 59
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 60
    .line 61
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->R:I

    .line 62
    .line 63
    invoke-virtual {v1, v2, v2}, Lw5/a;->o(II)Lw5/a;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/bumptech/glide/m;

    .line 68
    .line 69
    const v2, 0x7f0802e5

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lw5/a;->g(I)Lw5/a;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/bumptech/glide/m;

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/m;->D(Landroid/widget/ImageView;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
