.class public Lde/fgerbig/spacepeng/global/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final DEV_MODE:Z = false

.field public static final HEIGHT:I = 0x1e0

.field public static final IS_OS_WINDOWS:Z

.field public static final NAME:Ljava/lang/String; = "SpacePeng"

.field public static final POWERUP_BORDER:F = 50.0f

.field public static final VERSION:Ljava/lang/String; = "V1.58-1"

.field public static final WIDTH:I = 0x320


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lde/fgerbig/spacepeng/global/Const;->IS_OS_WINDOWS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
