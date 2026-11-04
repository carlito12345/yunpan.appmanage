.class public final synthetic Lwa/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lwa/s;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/media/AudioManager;

.field public final synthetic e:I

.field public final synthetic f:Ljava/io/File;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lwa/s;IILandroid/media/AudioManager;ILjava/io/File;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa/m;->a:Lwa/s;

    iput p2, p0, Lwa/m;->b:I

    iput p3, p0, Lwa/m;->c:I

    iput-object p4, p0, Lwa/m;->d:Landroid/media/AudioManager;

    iput p5, p0, Lwa/m;->e:I

    iput-object p6, p0, Lwa/m;->f:Ljava/io/File;

    iput p7, p0, Lwa/m;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v5, p0, Lwa/m;->f:Ljava/io/File;

    iget v6, p0, Lwa/m;->g:I

    iget-object v0, p0, Lwa/m;->a:Lwa/s;

    iget v1, p0, Lwa/m;->b:I

    iget v2, p0, Lwa/m;->c:I

    iget-object v3, p0, Lwa/m;->d:Landroid/media/AudioManager;

    iget v4, p0, Lwa/m;->e:I

    invoke-static/range {v0 .. v6}, Lwa/s;->a(Lwa/s;IILandroid/media/AudioManager;ILjava/io/File;I)V

    return-void
.end method
