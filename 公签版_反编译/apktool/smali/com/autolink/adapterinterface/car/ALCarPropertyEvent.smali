.class public Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private f172id:I

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    sput-object v0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    new-instance v0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent$1;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent$1;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->f172id:I

    .line 3
    iput-object p2, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->f172id:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 8
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, La2/e;->r(Landroid/os/Parcel;)[B

    move-result-object p1

    sget-object v2, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->value:Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    const-class v2, [B

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {p1}, La2/e;->r(Landroid/os/Parcel;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->value:Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 13
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "class not found "

    .line 14
    invoke-static {v1, v0}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->f172id:I

    .line 2
    .line 3
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->f172id:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->value:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    move-object p2, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :goto_0
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-class v0, Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object p2, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->value:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p2, Ljava/lang/String;

    .line 37
    .line 38
    sget-object v0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p1, p2}, La2/e;->n(Landroid/os/Parcel;[B)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-class v0, [B

    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    iget-object p2, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->value:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p2, [B

    .line 59
    .line 60
    invoke-static {p1, p2}, La2/e;->n(Landroid/os/Parcel;[B)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget-object p2, p0, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->value:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method
