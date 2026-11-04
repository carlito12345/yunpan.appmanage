.class public abstract Ltg/d;
.super Ltg/b;
.source "SourceFile"


# static fields
.field public static final d:[Ljava/nio/file/OpenOption;


# instance fields
.field public final c:[Ljava/nio/file/OpenOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lug/a;->a:[Ljava/nio/file/OpenOption;

    .line 2
    .line 3
    sput-object v0, Ltg/d;->d:[Ljava/nio/file/OpenOption;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ltg/b;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 8
    .line 9
    .line 10
    sget-object v0, Ltg/d;->d:[Ljava/nio/file/OpenOption;

    .line 11
    .line 12
    iput-object v0, p0, Ltg/d;->c:[Ljava/nio/file/OpenOption;

    .line 13
    .line 14
    new-instance v0, Ltg/c;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Ltg/c;-><init>(Ltg/d;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public Q0()[Ljava/nio/file/OpenOption;
    .locals 1

    .line 1
    iget-object v0, p0, Ltg/d;->c:[Ljava/nio/file/OpenOption;

    .line 2
    .line 3
    return-object v0
.end method
