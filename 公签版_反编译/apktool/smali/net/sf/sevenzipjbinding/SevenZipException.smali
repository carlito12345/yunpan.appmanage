.class public Lnet/sf/sevenzipjbinding/SevenZipException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/sevenzipjbinding/SevenZipException$PrintStreamWriter;,
        Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;
    }
.end annotation


# static fields
.field private static final NEW_LINE:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x2aL


# instance fields
.field private causeFirstPotentialThrown:Ljava/lang/Throwable;

.field private causeLastPotentialThrown:Ljava/lang/Throwable;

.field private causeLastThrown:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "line.separator"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnet/sf/sevenzipjbinding/SevenZipException;->NEW_LINE:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method private getMessage(Z)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastThrown:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeFirstPotentialThrown:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastPotentialThrown:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    const-string v1, ""

    invoke-direct {p0, v1, v0, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;->printToStringBuilder(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getMessageForPrintStackTraceExtended(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;->getMessage(Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private printMessageToStringBuilder(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v0, ": "

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    instance-of v0, p3, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    check-cast p3, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 22
    .line 23
    const-string v0, "  "

    .line 24
    .line 25
    invoke-static {p1, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {p3, p1, p2, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;->printToStringBuilder(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private static printStackTraceOfThrowable(Ljava/io/PrintWriter;Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lnet/sf/sevenzipjbinding/SevenZipException;->printStackTraceToPrintWriter(Ljava/io/PrintWriter;Lnet/sf/sevenzipjbinding/SevenZipException;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0, p1, p2}, Lnet/sf/sevenzipjbinding/SevenZipException;->printStackTraceRecursive(Ljava/io/PrintWriter;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private static printStackTraceRecursive(Ljava/io/PrintWriter;Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    array-length v4, v3

    .line 14
    add-int/lit8 v4, v4, -0x1

    .line 15
    .line 16
    array-length v5, v0

    .line 17
    add-int/lit8 v5, v5, -0x1

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    :goto_0
    if-lt v4, v1, :cond_1

    .line 21
    .line 22
    if-lt v5, v1, :cond_1

    .line 23
    .line 24
    aget-object v7, v3, v4

    .line 25
    .line 26
    aget-object v8, v0, v5

    .line 27
    .line 28
    invoke-virtual {v7, v8}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-eqz v7, :cond_1

    .line 33
    .line 34
    add-int/lit8 v4, v4, -0x1

    .line 35
    .line 36
    add-int/lit8 v5, v5, -0x1

    .line 37
    .line 38
    add-int/lit8 v6, v6, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v6, 0x0

    .line 42
    :cond_1
    if-gt v6, v1, :cond_2

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    :cond_2
    if-nez p2, :cond_3

    .line 46
    .line 47
    invoke-static {p1}, Lnet/sf/sevenzipjbinding/SevenZipException;->getMessageForPrintStackTraceExtended(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "Caused by: "

    .line 58
    .line 59
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lnet/sf/sevenzipjbinding/SevenZipException;->getMessageForPrintStackTraceExtended(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    array-length p2, v0

    .line 77
    sub-int/2addr p2, v6

    .line 78
    if-ge v2, p2, :cond_4

    .line 79
    .line 80
    aget-object p2, v0, v2

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v3, "\tat "

    .line 85
    .line 86
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    if-lez v6, :cond_5

    .line 103
    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v0, "\t... "

    .line 107
    .line 108
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, " more"

    .line 115
    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    if-eqz p2, :cond_6

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p0, p2, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;->printStackTraceOfThrowable(Ljava/io/PrintWriter;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    return-void
.end method

.method private static printStackTraceToPrintWriter(Ljava/io/PrintWriter;Lnet/sf/sevenzipjbinding/SevenZipException;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastThrown:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lnet/sf/sevenzipjbinding/SevenZipException;->causeFirstPotentialThrown:Ljava/lang/Throwable;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p1, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastPotentialThrown:Ljava/lang/Throwable;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0, p1, p2}, Lnet/sf/sevenzipjbinding/SevenZipException;->printStackTraceRecursive(Ljava/io/PrintWriter;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string v0, "+------ SevenZipException with multiple \'cause by\' exceptions. Stacktraces for all involved exceptions:"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "+-- The SevenZipException itself with first thrown \'cause by\' exception (first cause): "

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/io/PrintWriter;

    .line 27
    .line 28
    new-instance v1, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;

    .line 29
    .line 30
    const-string v2, "  FIRST THROWN CAUSE "

    .line 31
    .line 32
    invoke-direct {v1, p0, v2}, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1, p2}, Lnet/sf/sevenzipjbinding/SevenZipException;->printStackTraceRecursive(Ljava/io/PrintWriter;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p1, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastThrown:Ljava/lang/Throwable;

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    const-string p2, "+-- Last thrown \'cause by\' exception (last cause): "

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Ljava/io/PrintWriter;

    .line 51
    .line 52
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;

    .line 53
    .line 54
    const-string v1, "  LAST THROWN CAUSE "

    .line 55
    .line 56
    invoke-direct {v0, p0, v1}, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p1, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastThrown:Ljava/lang/Throwable;

    .line 63
    .line 64
    invoke-static {p2, v0, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;->printStackTraceOfThrowable(Ljava/io/PrintWriter;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object p2, p1, Lnet/sf/sevenzipjbinding/SevenZipException;->causeFirstPotentialThrown:Ljava/lang/Throwable;

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    const-string p2, "+-- First thrown potential \'cause by\' exception, thrown in an other thread (first possible cause): "

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance p2, Ljava/io/PrintWriter;

    .line 77
    .line 78
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;

    .line 79
    .line 80
    const-string v1, "  FIRST THROWN POTENTIAL CAUSE "

    .line 81
    .line 82
    invoke-direct {v0, p0, v1}, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-direct {p2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p1, Lnet/sf/sevenzipjbinding/SevenZipException;->causeFirstPotentialThrown:Ljava/lang/Throwable;

    .line 89
    .line 90
    invoke-static {p2, v0, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;->printStackTraceOfThrowable(Ljava/io/PrintWriter;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p2, p1, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastPotentialThrown:Ljava/lang/Throwable;

    .line 94
    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    const-string p2, "+-- Last thrown potential \'cause by\' exception, thrown in an other thread (last possible cause): "

    .line 98
    .line 99
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance p2, Ljava/io/PrintWriter;

    .line 103
    .line 104
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;

    .line 105
    .line 106
    const-string v1, "  LAST THROWN POTENTIAL CAUSE "

    .line 107
    .line 108
    invoke-direct {v0, p0, v1}, Lnet/sf/sevenzipjbinding/SevenZipException$StackTraceWriter;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p1, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastPotentialThrown:Ljava/lang/Throwable;

    .line 115
    .line 116
    invoke-static {p2, v0, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;->printStackTraceOfThrowable(Ljava/io/PrintWriter;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    const-string p1, "+------ End of stacktrace of SevenZipException with multiple \'cause by\' exceptions"

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method private printToStringBuilder(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "No message"

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    if-nez p3, :cond_1

    .line 23
    .line 24
    sget-object p3, Lnet/sf/sevenzipjbinding/SevenZipException;->NEW_LINE:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p3, "This SevenZipException has multiple \'cause by\' exceptions. Use one of the SevenZipException.printStackTraceExtended(..) methods to get stack trace of last thrown and first/last potiential thrown \'cause by\' exceptions."

    .line 30
    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/SevenZipException;->getCause()Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    sget-object v0, Lnet/sf/sevenzipjbinding/SevenZipException;->NEW_LINE:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, "Caused by (first thrown): "

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/SevenZipException;->printMessageToStringBuilder(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastThrown:Ljava/lang/Throwable;

    .line 57
    .line 58
    if-eqz p3, :cond_3

    .line 59
    .line 60
    sget-object p3, Lnet/sf/sevenzipjbinding/SevenZipException;->NEW_LINE:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p3, "Caused by (last thrown): "

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastThrown:Ljava/lang/Throwable;

    .line 74
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/SevenZipException;->printMessageToStringBuilder(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeFirstPotentialThrown:Ljava/lang/Throwable;

    .line 79
    .line 80
    if-eqz p3, :cond_4

    .line 81
    .line 82
    sget-object p3, Lnet/sf/sevenzipjbinding/SevenZipException;->NEW_LINE:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p3, "Caused by (first potential thrown): "

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeFirstPotentialThrown:Ljava/lang/Throwable;

    .line 96
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/SevenZipException;->printMessageToStringBuilder(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastPotentialThrown:Ljava/lang/Throwable;

    .line 101
    .line 102
    if-eqz p3, :cond_5

    .line 103
    .line 104
    sget-object p3, Lnet/sf/sevenzipjbinding/SevenZipException;->NEW_LINE:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p3, "Caused by (last potential thrown): "

    .line 113
    .line 114
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object p3, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastPotentialThrown:Ljava/lang/Throwable;

    .line 118
    .line 119
    invoke-direct {p0, p1, p2, p3}, Lnet/sf/sevenzipjbinding/SevenZipException;->printMessageToStringBuilder(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    return-void
.end method

.method private setCauseFirstPotentialThrown(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeFirstPotentialThrown:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method private setCauseLastPotentialThrown(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastPotentialThrown:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method private setCauseLastThrown(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastThrown:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCauseFirstPotentialThrown()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeFirstPotentialThrown:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCauseLastPotentialThrown()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastPotentialThrown:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCauseLastThrown()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/SevenZipException;->causeLastThrown:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;->getMessage(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSevenZipExceptionMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public printStackTraceExtended()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;->printStackTraceExtended(Ljava/io/PrintStream;)V

    return-void
.end method

.method public printStackTraceExtended(Ljava/io/PrintStream;)V
    .locals 2

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Lnet/sf/sevenzipjbinding/SevenZipException$PrintStreamWriter;

    invoke-direct {v1, p1}, Lnet/sf/sevenzipjbinding/SevenZipException$PrintStreamWriter;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/sf/sevenzipjbinding/SevenZipException;->printStackTraceToPrintWriter(Ljava/io/PrintWriter;Lnet/sf/sevenzipjbinding/SevenZipException;Ljava/lang/Throwable;)V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTraceExtended(Ljava/io/PrintWriter;)V
    .locals 1

    .line 5
    monitor-enter p1

    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-static {p1, p0, v0}, Lnet/sf/sevenzipjbinding/SevenZipException;->printStackTraceToPrintWriter(Ljava/io/PrintWriter;Lnet/sf/sevenzipjbinding/SevenZipException;Ljava/lang/Throwable;)V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
