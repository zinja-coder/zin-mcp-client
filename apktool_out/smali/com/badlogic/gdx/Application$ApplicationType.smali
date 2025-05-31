.class public final enum Lcom/badlogic/gdx/Application$ApplicationType;
.super Ljava/lang/Enum;
.source "Application.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Application;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/Application$ApplicationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final enum Android:Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final enum Applet:Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final enum Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final enum HeadlessDesktop:Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final enum WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

.field public static final enum iOS:Lcom/badlogic/gdx/Application$ApplicationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    new-instance v0, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v1, "Android"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    new-instance v0, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v1, "Desktop"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    new-instance v0, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v1, "HeadlessDesktop"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->HeadlessDesktop:Lcom/badlogic/gdx/Application$ApplicationType;

    new-instance v0, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v1, "Applet"

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    new-instance v0, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v1, "WebGL"

    invoke-direct {v0, v1, v7}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    new-instance v0, Lcom/badlogic/gdx/Application$ApplicationType;

    const-string v1, "iOS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Application$ApplicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/badlogic/gdx/Application$ApplicationType;

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->HeadlessDesktop:Lcom/badlogic/gdx/Application$ApplicationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->$VALUES:[Lcom/badlogic/gdx/Application$ApplicationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Application$ApplicationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Application$ApplicationType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/Application$ApplicationType;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/badlogic/gdx/Application$ApplicationType;->$VALUES:[Lcom/badlogic/gdx/Application$ApplicationType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Application$ApplicationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Application$ApplicationType;

    return-object v0
.end method
