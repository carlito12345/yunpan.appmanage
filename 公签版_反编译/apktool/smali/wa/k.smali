.class public final synthetic Lwa/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lwa/s;

.field public final synthetic c:Lcom/yunpan/appmanage/service/AccService;


# direct methods
.method public synthetic constructor <init>(Lwa/s;Lcom/yunpan/appmanage/service/AccService;I)V
    .locals 0

    .line 1
    iput p3, p0, Lwa/k;->a:I

    iput-object p1, p0, Lwa/k;->b:Lwa/s;

    iput-object p2, p0, Lwa/k;->c:Lcom/yunpan/appmanage/service/AccService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    .line 1
    iget v0, p0, Lwa/k;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwa/k;->b:Lwa/s;

    .line 7
    .line 8
    const/4 v1, -0x3

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    const/4 v1, -0x2

    .line 12
    if-eq p1, v1, :cond_0

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lwa/k;->c:Lcom/yunpan/appmanage/service/AccService;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 21
    .line 22
    iget-object v1, v0, Lwa/s;->x:Landroid/media/AudioFocusRequest;

    .line 23
    .line 24
    invoke-static {p1, v1}, Leg/a;->m(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, v0, Lwa/s;->x:Landroid/media/AudioFocusRequest;

    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lwa/k;->b:Lwa/s;

    .line 32
    .line 33
    const/4 v1, -0x3

    .line 34
    if-eq p1, v1, :cond_1

    .line 35
    .line 36
    const/4 v1, -0x2

    .line 37
    if-eq p1, v1, :cond_1

    .line 38
    .line 39
    const/4 v1, -0x1

    .line 40
    if-eq p1, v1, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object p1, p0, Lwa/k;->c:Lcom/yunpan/appmanage/service/AccService;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->O0:Landroid/media/AudioManager;

    .line 46
    .line 47
    iget-object v1, v0, Lwa/s;->y:Lwa/k;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput-object p1, v0, Lwa/s;->y:Lwa/k;

    .line 54
    .line 55
    :goto_1
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
