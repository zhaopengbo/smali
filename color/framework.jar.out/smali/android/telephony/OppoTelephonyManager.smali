.class public Landroid/telephony/OppoTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "OppoTelephonyManager.java"


# annotations
.annotation build Landroid/annotation/OppoHook;
    level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_CLASS:Landroid/annotation/OppoHook$OppoHookType;
    note = "sub class of TelephonyManager"
    property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "OppoTelephonyManager"

.field private static isMtkGeminiSupport:Z

.field private static isMtkSupport:Z

.field private static isOppoSupport:Z

.field private static isRomSupport:Z

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Landroid/telephony/OppoTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Landroid/telephony/OppoTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/OppoTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/OppoTelephonyManager;->sInstance:Landroid/telephony/OppoTelephonyManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 40
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 43
    sput-object v0, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    .line 49
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    :goto_0
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.sw.solution.device"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isOppoSupport:Z

    .line 50
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.sw.solution.rom"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isRomSupport:Z

    .line 51
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "mtk.gemini.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    .line 52
    sget-object v1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oppo.hw.manufacturer.mtk"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    .line 53
    const-string v1, "OppoTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OppoTelephonyManager isMtkSupport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isMtkGeminiSupport ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 45
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_1
    sput-object p1, Landroid/telephony/OppoTelephonyManager;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/OppoTelephonyManager;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/telephony/OppoTelephonyManager;->sInstance:Landroid/telephony/OppoTelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getIccPhoneBookInfo()Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/OppoTelephonyManager;->getIccPhoneBookInfoGemini(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    goto :goto_0
.end method

.method private getIccPhoneBookInfoGemini(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get ICC phonebook information, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 328
    const-string/jumbo v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public oppoChangeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 258
    return-void
.end method

.method public oppoCheckPhbNameLength(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 140
    const/4 v0, -0x1

    return v0
.end method

.method public oppoCheckPhbNameLengthGenimi(Ljava/lang/String;I)I
    .locals 1
    .parameter "name"
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "check phonebook\'s name length, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 363
    const/4 v0, -0x1

    return v0
.end method

.method public oppoDisableDataConnectivity()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 160
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/telephony/OppoTelephonyManager;->oppoDisableDataConnectivityGemini(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 166
    :cond_0
    :goto_0
    return v1

    .line 164
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public oppoDisableDataConnectivityGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "disble data connectivity, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 399
    const/4 v0, -0x1

    return v0
.end method

.method public oppoEnableDataConnectivity()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 148
    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkSupport:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/telephony/OppoTelephonyManager;->isMtkGeminiSupport:Z

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p0}, Landroid/telephony/OppoTelephonyManager;->getDefaultSim()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/telephony/OppoTelephonyManager;->oppoEnableDataConnectivityGemini(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 152
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OppoTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public oppoEnableDataConnectivityGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "enable data connectivity, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 392
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetAudioRecordState()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public oppoGetIccCardType()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get sim Card Type"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 421
    const-string v2, "gsm.sim.card.type"

    const-string v3, "SIM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, vStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    const-string v2, "USIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    const-string v1, "USIM"

    .line 437
    :cond_0
    :goto_0
    return-object v1

    .line 429
    :cond_1
    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    const-string v1, "SIM"

    goto :goto_0
.end method

.method public oppoGetIccLockEnabled()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public oppoGetIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetPreferredNetworkType()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetScAddress(I)Ljava/lang/String;
    .locals 1
    .parameter "slotId"

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public oppoGetServiceState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public oppoGetServiceStateGemini(I)Landroid/os/Bundle;
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get service state, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public oppoGetSimIndicatorState()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimIndicatorStateGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get sim indicator state, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 413
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookAllSpace()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookAllSpaceGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get sim phonebook\'s all space, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 342
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookEmailLength()I
    .locals 1
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get sim phonebook\'s email length, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 378
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookEmailLengthGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get sim phonebook\'s email length, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 385
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookNameLength()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookNameLengthGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get sim phonebook\'s name length, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 356
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookNumberLength()I
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0x14

    return v0
.end method

.method public oppoGetSimPhonebookNumberLengthGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get sim phonebook\'s number length, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 371
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookUsedSpace()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, -0x1

    return v0
.end method

.method public oppoGetSimPhonebookUsedSpaceGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "get sim phonebook\'s used space, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 349
    const/4 v0, -0x1

    return v0
.end method

.method public oppoIsDialing()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public oppoSetIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 248
    return-void
.end method

.method public oppoSetLine1Number(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public oppoSetPreferredNetworkType(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 124
    const/4 v0, -0x1

    return v0
.end method

.method public oppoSetScAddress(Ljava/lang/String;I)Z
    .locals 1
    .parameter "address"
    .parameter "slotId"

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public oppoSimPhonebookIsReady()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, -0x1

    return v0
.end method

.method public oppoSimPhonebookIsReadyGemini(I)I
    .locals 1
    .parameter "simId"
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_METHOD:Landroid/annotation/OppoHook$OppoHookType;
        note = "tell sim phonebook is ready, only for MTK platform"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    .line 335
    const/4 v0, -0x1

    return v0
.end method
