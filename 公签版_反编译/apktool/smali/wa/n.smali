.class public final synthetic Lwa/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Lwa/s;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/media/AudioManager;


# direct methods
.method public synthetic constructor <init>(Lwa/s;IIILandroid/media/AudioManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa/n;->a:Lwa/s;

    iput p2, p0, Lwa/n;->b:I

    iput p3, p0, Lwa/n;->c:I

    iput p4, p0, Lwa/n;->d:I

    iput-object p5, p0, Lwa/n;->e:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .line 1
    iget v3, p0, Lwa/n;->d:I

    iget-object v4, p0, Lwa/n;->e:Landroid/media/AudioManager;

    iget-object v0, p0, Lwa/n;->a:Lwa/s;

    iget v1, p0, Lwa/n;->b:I

    iget v2, p0, Lwa/n;->c:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lwa/s;->b(Lwa/s;IIILandroid/media/AudioManager;Landroid/media/MediaPlayer;)V

    return-void
.end method
