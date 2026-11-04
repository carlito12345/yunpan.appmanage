.class public final Lg5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg5/c;


# static fields
.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/ContentResolver;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "_data"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [Ljava/lang/String;

    .line 6
    .line 7
    aput-object v1, v3, v0

    .line 8
    .line 9
    sput-object v3, Lg5/a;->c:[Ljava/lang/String;

    .line 10
    .line 11
    new-array v2, v2, [Ljava/lang/String;

    .line 12
    .line 13
    aput-object v1, v2, v0

    .line 14
    .line 15
    sput-object v2, Lg5/a;->d:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/ContentResolver;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg5/a;->a:I

    iput-object p1, p0, Lg5/a;->b:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lg5/a;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v3, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 13
    .line 14
    sget-object v4, Lg5/a;->d:[Ljava/lang/String;

    .line 15
    .line 16
    new-array v6, v1, [Ljava/lang/String;

    .line 17
    .line 18
    aput-object p1, v6, v0

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    iget-object v2, p0, Lg5/a;->b:Landroid/content/ContentResolver;

    .line 22
    .line 23
    const-string v5, "kind = 1 AND video_id = ?"

    .line 24
    .line 25
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 35
    .line 36
    sget-object v4, Lg5/a;->c:[Ljava/lang/String;

    .line 37
    .line 38
    new-array v6, v1, [Ljava/lang/String;

    .line 39
    .line 40
    aput-object p1, v6, v0

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    iget-object v2, p0, Lg5/a;->b:Landroid/content/ContentResolver;

    .line 44
    .line 45
    const-string v5, "kind = 1 AND image_id = ?"

    .line 46
    .line 47
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
