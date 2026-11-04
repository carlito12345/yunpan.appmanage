.class public final synthetic Lha/f6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/s5;


# direct methods
.method public synthetic constructor <init>(Lha/s5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/f6;->a:I

    iput-object p1, p0, Lha/f6;->b:Lha/s5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1
    iget p1, p0, Lha/f6;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/f6;->b:Lha/s5;

    .line 7
    .line 8
    iget-object p1, p1, Lha/s5;->i:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p1, Lx9/n5;

    .line 11
    .line 12
    const v0, 0x7f0b0542

    .line 13
    .line 14
    .line 15
    if-ne p2, v0, :cond_0

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p1, Lx9/n5;->B:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v0, 0x7f0b0541

    .line 22
    .line 23
    .line 24
    if-ne p2, v0, :cond_1

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p1, Lx9/n5;->B:Z

    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object p1, p0, Lha/f6;->b:Lha/s5;

    .line 31
    .line 32
    iget-object p1, p1, Lha/s5;->i:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lx9/n5;

    .line 35
    .line 36
    const v0, 0x7f0b0543

    .line 37
    .line 38
    .line 39
    if-ne p2, v0, :cond_2

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p1, Lx9/n5;->z:Z

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const v0, 0x7f0b0540

    .line 46
    .line 47
    .line 48
    if-ne p2, v0, :cond_3

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    iput-boolean p2, p1, Lx9/n5;->z:Z

    .line 52
    .line 53
    :cond_3
    :goto_1
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
