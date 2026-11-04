.class public final synthetic Lwa/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lwa/s;


# direct methods
.method public synthetic constructor <init>(Lwa/s;I)V
    .locals 0

    .line 1
    iput p2, p0, Lwa/p;->a:I

    iput-object p1, p0, Lwa/p;->b:Lwa/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    .line 1
    iget v0, p0, Lwa/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwa/p;->b:Lwa/s;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v1, -0x3

    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    const/4 v1, -0x2

    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lwa/s;->e()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lwa/p;->b:Lwa/s;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const/4 v1, -0x3

    .line 31
    if-eq p1, v1, :cond_1

    .line 32
    .line 33
    const/4 v1, -0x2

    .line 34
    if-eq p1, v1, :cond_1

    .line 35
    .line 36
    const/4 v1, -0x1

    .line 37
    if-eq p1, v1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v0}, Lwa/s;->e()V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
