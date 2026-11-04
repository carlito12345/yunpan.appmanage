.class public abstract Ls5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf5/h;

.field public static final b:Lf5/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lf5/b;->c:Lf5/b;

    .line 2
    .line 3
    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lf5/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lf5/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Ls5/h;->a:Lf5/h;

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lf5/h;->a(Ljava/lang/Object;Ljava/lang/String;)Lf5/h;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Ls5/h;->b:Lf5/h;

    .line 20
    .line 21
    return-void
.end method
