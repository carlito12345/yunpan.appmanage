.class public final synthetic Lb7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb7/a;->a:I

    iput-object p1, p0, Lb7/a;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lb7/a;->b:Landroid/view/KeyEvent$Callback;

    .line 3
    .line 4
    iget v2, p0, Lb7/a;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage2;->M0:I

    .line 10
    .line 11
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityImage2;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/util/w;->w(Z)V

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityImage2;->Z:Lcom/yunpan/appmanage/carsdk/u;

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    iget p1, p1, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 29
    .line 30
    mul-int/lit16 p1, p1, 0x3e8

    .line 31
    .line 32
    int-to-long v1, p1

    .line 33
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityImage;->t0:I

    .line 38
    .line 39
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityImage;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/util/w;->w(Z)V

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    iget-object p2, v1, Lcom/yunpan/appmanage/ui/ActivityImage;->Y:Lcom/yunpan/appmanage/carsdk/u;

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    .line 55
    .line 56
    iget p1, p1, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 57
    .line 58
    mul-int/lit16 p1, p1, 0x3e8

    .line 59
    .line 60
    int-to-long v1, p1

    .line 61
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :pswitch_1
    check-cast v1, Lcom/google/android/material/chip/Chip;

    .line 66
    .line 67
    iget-object v0, v1, Lcom/google/android/material/chip/Chip;->i:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
