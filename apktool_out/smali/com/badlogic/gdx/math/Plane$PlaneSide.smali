.class public final enum Lcom/badlogic/gdx/math/Plane$PlaneSide;
.super Ljava/lang/Enum;
.source "Plane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Plane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaneSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/math/Plane$PlaneSide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/math/Plane$PlaneSide;

.field public static final enum Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

.field public static final enum Front:Lcom/badlogic/gdx/math/Plane$PlaneSide;

.field public static final enum OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;

    const-string v1, "OnPlane"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane$PlaneSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    new-instance v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;

    const-string v1, "Back"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/math/Plane$PlaneSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    new-instance v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;

    const-string v1, "Front"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/math/Plane$PlaneSide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Front:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/math/Plane$PlaneSide;

    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Front:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;->$VALUES:[Lcom/badlogic/gdx/math/Plane$PlaneSide;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/math/Plane$PlaneSide;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/math/Plane$PlaneSide;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/badlogic/gdx/math/Plane$PlaneSide;->$VALUES:[Lcom/badlogic/gdx/math/Plane$PlaneSide;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/math/Plane$PlaneSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/math/Plane$PlaneSide;

    return-object v0
.end method
