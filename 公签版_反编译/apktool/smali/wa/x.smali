.class public final synthetic Lwa/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lwa/z;


# direct methods
.method public synthetic constructor <init>(Lwa/z;I)V
    .locals 0

    .line 1
    iput p2, p0, Lwa/x;->a:I

    iput-object p1, p0, Lwa/x;->b:Lwa/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lwa/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwa/x;->b:Lwa/z;

    .line 7
    .line 8
    iget-object v0, v0, Lwa/z;->d:Lv8/a;

    .line 9
    .line 10
    iget-object v1, v0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lv8/a;->n(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :pswitch_0
    iget-object v0, p0, Lwa/x;->b:Lwa/z;

    .line 22
    .line 23
    iget-object v0, v0, Lwa/z;->d:Lv8/a;

    .line 24
    .line 25
    iget-object v1, v0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 26
    .line 27
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 28
    .line 29
    const/4 v2, 0x6

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lv8/a;->n(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    :pswitch_1
    iget-object v0, p0, Lwa/x;->b:Lwa/z;

    .line 37
    .line 38
    iget-object v0, v0, Lwa/z;->d:Lv8/a;

    .line 39
    .line 40
    iget-object v1, v0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    if-eq v1, v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lv8/a;->n(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void

    .line 51
    :pswitch_2
    iget-object v0, p0, Lwa/x;->b:Lwa/z;

    .line 52
    .line 53
    iget-object v0, v0, Lwa/z;->d:Lv8/a;

    .line 54
    .line 55
    iget-object v1, v0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 56
    .line 57
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    if-eq v1, v2, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Lv8/a;->n(I)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
