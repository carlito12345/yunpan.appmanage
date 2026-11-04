.class public final Lud/d;
.super Lud/c;
.source "SourceFile"


# static fields
.field public static final c:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    sput-object v0, Lud/d;->c:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lud/c;-><init>(I[B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
