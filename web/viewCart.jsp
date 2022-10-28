<%-- Document : viewCart Created on : Oct 13, 2022, 8:47:06 AM Author : hohon --%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.tea.TeaDTO"%> <%@page import="sample.tea.CartDTO"%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>View Cart Page</title>
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
            integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
            crossorigin="anonymous"
            />
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
        <style type="text/css">
            <%@include file="/css/view.css"%>

        </style>
    </head>
    <body>
        <div>
            <h1 style="text-align: center">Enjoy your Happy time!</h1>

            <c:if test="${not empty sessionScope.CART}">
                <table border="1" class="table" style="width: 60%; margin: 0 auto; margin-top: 30px">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Total</th>
                            <th scope="col">Update</th>
                            <th scope="col">Remove</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="tea" items="${sessionScope.CART.getCart().values()}" varStatus="count">
                            <c:set var="total" value="${total + (tea.quantity * tea.price)}" />
                        <form action="MainController" method="POST">
                            <tr>
                                <td>${count.count}</td>
                                <td>${tea.id}</td>
                                <td>${tea.name}</td>
                                <td>${tea.price}</td>
                                <td><input type="number" name="quantity" value="${tea.quantity}" min="1" /></td>
                                <td>${tea.quantity * tea.price}</td>
                            <input type="hidden" name="id" value="${tea.id}" />
                            <td><input type="submit" name="action" value="Change" /></td>
                            <td>  <input style="background-color: red" type="submit" name="action" value="Remove" /> </td>
                            </tr>
                        </form>
                    </c:forEach>


                    <tr>
                        <th scope="col" colspan="5" style="text-align: center; font-size: 20px">Total</th>
                        <th scope="col">${total}</th>
                        <th scope="col" colspan="3" style="text-align: center; font-size: 20px"><input type="submit" name="" value="Pay" style="text-align: center; width: 72.66px" /></th>
                    </tr>

                    </tbody>
                </table>
            </c:if>
            <c:if test="${empty sessionScope.CART}">
                <h5>No product in cart</h5>
            </c:if>
            <div style=" margin-bottom: 90px;">
                <button style="margin-left: 70%; margin-top: 15px" type="button" class="btn btn-outline-success"><a href="shopping.jsp">Add more</a></button>
                <a style="margin-left: 70%; margin-top: 15px"href="login.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">login</a>
            </div>
        </div>
        <div>

            <div class="main"></div>
            <div class="footer">
                <div class="bubbles">
                    <div class="bubble" style="--size:2.0510831438198265rem; --distance:9.647208229945367rem; --position:66.79621138368131%; --time:3.7387298503441673s; --delay:-2.9389030949299304s;"></div>
                    <div class="bubble" style="--size:3.721146480211984rem; --distance:8.509198528918429rem; --position:82.41954713779012%; --time:2.757724772299677s; --delay:-3.2014439574246243s;"></div>
                    <div class="bubble" style="--size:3.7737062139336173rem; --distance:9.94348577444121rem; --position:69.95522800590142%; --time:2.586988234138111s; --delay:-3.70187216672674s;"></div>
                    <div class="bubble" style="--size:5.911645045831477rem; --distance:6.906826397827057rem; --position:27.58288978936796%; --time:2.050080410859814s; --delay:-3.1877128684267935s;"></div>
                    <div class="bubble" style="--size:4.392632021214818rem; --distance:9.370026511202717rem; --position:25.678846152148385%; --time:2.9539065163797615s; --delay:-3.04021065714909s;"></div>
                    <div class="bubble" style="--size:5.21708784037581rem; --distance:9.02590681875183rem; --position:30.42669540583193%; --time:3.718071766384792s; --delay:-3.838373991503432s;"></div>
                    <div class="bubble" style="--size:4.672306827510369rem; --distance:8.168785949277844rem; --position:9.692092145755575%; --time:2.678100822669849s; --delay:-3.1089098388827434s;"></div>
                    <div class="bubble" style="--size:3.168889317572182rem; --distance:9.263460203796042rem; --position:83.57611968368279%; --time:3.3274263656406706s; --delay:-3.2455387046827293s;"></div>
                    <div class="bubble" style="--size:5.029385550687836rem; --distance:6.31527485443729rem; --position:57.816610447375446%; --time:3.1970496467734937s; --delay:-2.3996038960110493s;"></div>
                    <div class="bubble" style="--size:2.2291329590706255rem; --distance:6.823620813389877rem; --position:66.97092027982572%; --time:2.8874246798210823s; --delay:-3.9396157699408403s;"></div>
                    <div class="bubble" style="--size:5.056200642684298rem; --distance:9.701404018780941rem; --position:57.5165118753018%; --time:3.9058500662764164s; --delay:-3.0559687368990582s;"></div>
                    <div class="bubble" style="--size:2.1017162545586094rem; --distance:6.467814736734532rem; --position:95.76945471392224%; --time:2.4874693835778428s; --delay:-3.978513279807776s;"></div>
                    <div class="bubble" style="--size:2.2726024727506324rem; --distance:7.552212981701779rem; --position:37.30129802483114%; --time:2.802015401005938s; --delay:-2.6352341972140065s;"></div>
                    <div class="bubble" style="--size:4.095022056163739rem; --distance:7.941527208503347rem; --position:20.42429723038719%; --time:3.065472318834181s; --delay:-2.798929174463953s;"></div>
                    <div class="bubble" style="--size:3.967282570474029rem; --distance:9.681356400716158rem; --position:19.450195434597827%; --time:2.603223232827733s; --delay:-3.0906827433931223s;"></div>
                    <div class="bubble" style="--size:5.550860952442121rem; --distance:7.538252373522424rem; --position:71.63891459720915%; --time:2.9546980057977392s; --delay:-3.7462963386944033s;"></div>
                    <div class="bubble" style="--size:3.332359300601527rem; --distance:6.873275155434515rem; --position:73.37858813287107%; --time:2.119413985650697s; --delay:-3.3549781034809603s;"></div>
                    <div class="bubble" style="--size:3.2216329202670924rem; --distance:9.886760286055745rem; --position:1.3878868992894366%; --time:3.7414236450418357s; --delay:-2.5526246042254304s;"></div>
                    <div class="bubble" style="--size:3.310857198665156rem; --distance:7.801171016174373rem; --position:29.215879166034682%; --time:3.7936548827609293s; --delay:-3.9055443647084327s;"></div>
                    <div class="bubble" style="--size:5.48957957545524rem; --distance:7.937202616176929rem; --position:53.56847516091354%; --time:2.8306578639009987s; --delay:-2.97836580793798s;"></div>
                    <div class="bubble" style="--size:5.221242832494342rem; --distance:6.62644462849272rem; --position:73.5272305967191%; --time:3.5245150010657995s; --delay:-2.2774685233834253s;"></div>
                    <div class="bubble" style="--size:2.6395839607128506rem; --distance:9.57302853423327rem; --position:71.48725321933065%; --time:3.5092698554586184s; --delay:-2.3179882425960265s;"></div>
                    <div class="bubble" style="--size:3.788007073008612rem; --distance:7.883936469087663rem; --position:70.5161179319075%; --time:2.0085286705083134s; --delay:-2.942762335778498s;"></div>
                    <div class="bubble" style="--size:2.420784181602471rem; --distance:9.525162465624739rem; --position:23.796192319485744%; --time:3.1066127263377643s; --delay:-3.335630033473657s;"></div>
                    <div class="bubble" style="--size:2.3150106435178213rem; --distance:6.667781152533192rem; --position:95.62966839908141%; --time:3.224737730146135s; --delay:-2.7716026494408137s;"></div>
                    <div class="bubble" style="--size:3.415428944992776rem; --distance:7.336330618388715rem; --position:33.985319949376056%; --time:3.121647477786339s; --delay:-3.1838975573228594s;"></div>
                    <div class="bubble" style="--size:4.827186906561023rem; --distance:6.120573589216235rem; --position:47.644295298397054%; --time:3.648521347151359s; --delay:-3.6420069892597096s;"></div>
                    <div class="bubble" style="--size:3.590470501961697rem; --distance:6.47991784162646rem; --position:0.18779293512513107%; --time:2.5265041159010235s; --delay:-3.8655141906337267s;"></div>
                    <div class="bubble" style="--size:3.3037633874763213rem; --distance:9.158098443701608rem; --position:-0.0933226652483965%; --time:2.0496980802045375s; --delay:-3.3606172383817996s;"></div>
                    <div class="bubble" style="--size:2.004037216700576rem; --distance:8.097695902298272rem; --position:54.905687065277846%; --time:2.098317147929961s; --delay:-2.3994931474945322s;"></div>
                    <div class="bubble" style="--size:4.456690137371253rem; --distance:9.827875306620674rem; --position:100.89748127697779%; --time:2.9767943616597283s; --delay:-3.242217082955652s;"></div>
                    <div class="bubble" style="--size:5.225549303755305rem; --distance:6.792449660313883rem; --position:34.940856555054786%; --time:2.5803768970455816s; --delay:-3.4077459895517705s;"></div>
                    <div class="bubble" style="--size:5.3005867847559855rem; --distance:6.534056315432171rem; --position:34.55016784426315%; --time:2.6392467468552714s; --delay:-3.9555418413024777s;"></div>
                    <div class="bubble" style="--size:5.1250740953002065rem; --distance:8.643468669386749rem; --position:103.78330314622934%; --time:2.5909054574127883s; --delay:-2.350224400279947s;"></div>
                    <div class="bubble" style="--size:4.140103786264586rem; --distance:8.341344926474243rem; --position:21.638108980828584%; --time:3.067463905102677s; --delay:-2.9387058741265415s;"></div>
                    <div class="bubble" style="--size:3.34181768706926rem; --distance:7.801282105152228rem; --position:104.15266074023587%; --time:3.461271813392812s; --delay:-2.9946222847873543s;"></div>
                    <div class="bubble" style="--size:4.047589911722089rem; --distance:6.607716967590627rem; --position:29.714311997376207%; --time:3.2189361845696642s; --delay:-3.7112124187600886s;"></div>
                    <div class="bubble" style="--size:3.941604724710266rem; --distance:6.10514146450949rem; --position:10.313614415377874%; --time:2.468862795367631s; --delay:-3.495043189256593s;"></div>
                    <div class="bubble" style="--size:2.113739736566571rem; --distance:9.989437712885739rem; --position:97.81260967477093%; --time:3.718935202869162s; --delay:-2.989197565118683s;"></div>
                    <div class="bubble" style="--size:2.8945749324698617rem; --distance:7.47619872101201rem; --position:82.56061247966514%; --time:2.0915173571977834s; --delay:-3.6396377251297234s;"></div>
                    <div class="bubble" style="--size:2.5450234274082364rem; --distance:6.970379734679393rem; --position:7.003896599105751%; --time:2.432139890869753s; --delay:-2.6739200306946675s;"></div>
                    <div class="bubble" style="--size:2.4122412119852106rem; --distance:7.782285329318097rem; --position:64.02554673395841%; --time:2.2604385623714878s; --delay:-3.740111439756662s;"></div>
                    <div class="bubble" style="--size:4.22662946847102rem; --distance:7.518645854752037rem; --position:101.29149445450237%; --time:2.1972223662930084s; --delay:-2.066728330140532s;"></div>
                    <div class="bubble" style="--size:3.667498817757319rem; --distance:6.609073290208434rem; --position:33.47498409297651%; --time:2.3220289557129608s; --delay:-3.2262475306892076s;"></div>
                    <div class="bubble" style="--size:3.444165664965009rem; --distance:6.3419608277788475rem; --position:23.603054854615323%; --time:3.253297559100815s; --delay:-2.1725406543432264s;"></div>
                    <div class="bubble" style="--size:3.4564871402584716rem; --distance:6.790932405247909rem; --position:35.84671150493737%; --time:3.3306099844640435s; --delay:-2.6793636415816047s;"></div>
                    <div class="bubble" style="--size:4.28736564284379rem; --distance:9.868805980395097rem; --position:87.97656672933108%; --time:2.3642008317585637s; --delay:-3.1186395825950934s;"></div>
                    <div class="bubble" style="--size:4.825647870824813rem; --distance:7.862988138133504rem; --position:55.90120478429918%; --time:3.8429112596354464s; --delay:-3.6600469817750647s;"></div>
                    <div class="bubble" style="--size:5.731461914785231rem; --distance:6.803172129752958rem; --position:18.5506845925006%; --time:3.092096699757974s; --delay:-3.130173487294459s;"></div>
                    <div class="bubble" style="--size:3.9380442638117215rem; --distance:7.92976979748539rem; --position:12.847795458676508%; --time:2.793027929532003s; --delay:-3.2677068545472983s;"></div>
                    <div class="bubble" style="--size:3.235526339787424rem; --distance:9.942803891379137rem; --position:81.1814478885435%; --time:3.1694087101223793s; --delay:-2.048767174595351s;"></div>
                    <div class="bubble" style="--size:2.0698383299849485rem; --distance:9.046469093761608rem; --position:46.48048713038391%; --time:3.6474872602520443s; --delay:-2.361646066790031s;"></div>
                    <div class="bubble" style="--size:2.5795821430880945rem; --distance:6.544546681488422rem; --position:97.71380067088559%; --time:2.2228896183263904s; --delay:-3.337298475788984s;"></div>
                    <div class="bubble" style="--size:2.506275936595266rem; --distance:8.889383889048199rem; --position:40.56340983003197%; --time:2.563288117743608s; --delay:-2.298315767428644s;"></div>
                    <div class="bubble" style="--size:5.925421515572708rem; --distance:9.149027348459196rem; --position:-1.2884658381886327%; --time:3.2364438468694567s; --delay:-3.6071010486548243s;"></div>
                    <div class="bubble" style="--size:5.136275580721387rem; --distance:9.419526517073066rem; --position:30.907063285805897%; --time:2.7590043325255116s; --delay:-2.719453199420411s;"></div>
                    <div class="bubble" style="--size:3.1824672047338085rem; --distance:7.706714381465788rem; --position:24.545702010760014%; --time:2.4591720283432177s; --delay:-3.139061912690809s;"></div>
                    <div class="bubble" style="--size:4.117315375309204rem; --distance:9.16463082428968rem; --position:43.949930209791624%; --time:3.0129256795840447s; --delay:-3.7961065970970953s;"></div>
                    <div class="bubble" style="--size:4.43343353268721rem; --distance:9.278869955820127rem; --position:25.143074425262377%; --time:3.5271910024058286s; --delay:-2.6076456984569023s;"></div>
                    <div class="bubble" style="--size:4.083390734941826rem; --distance:7.275220202371282rem; --position:101.03169973185527%; --time:3.0824351737522977s; --delay:-2.35773880921128s;"></div>
                    <div class="bubble" style="--size:2.7037465764233914rem; --distance:9.996139524511424rem; --position:79.56924909318101%; --time:3.1568423947432107s; --delay:-3.6657258327652786s;"></div>
                    <div class="bubble" style="--size:5.56379301322817rem; --distance:7.391440585596974rem; --position:21.436763437543647%; --time:2.962444096551673s; --delay:-2.296756598443277s;"></div>
                    <div class="bubble" style="--size:2.754599300258328rem; --distance:8.513094763051573rem; --position:63.14960790023517%; --time:2.1344027961341134s; --delay:-2.5617639499613176s;"></div>
                    <div class="bubble" style="--size:5.227811143323478rem; --distance:7.102402120814579rem; --position:58.732369203306106%; --time:3.7815208945826058s; --delay:-2.882682085626417s;"></div>
                    <div class="bubble" style="--size:3.9231605229879225rem; --distance:9.073148636618715rem; --position:57.5536930376695%; --time:2.172024789495253s; --delay:-2.949203013382585s;"></div>
                    <div class="bubble" style="--size:2.792852576398115rem; --distance:8.415197762339602rem; --position:15.203593739906822%; --time:2.7567538817361843s; --delay:-3.840900812746044s;"></div>
                    <div class="bubble" style="--size:2.139961964527469rem; --distance:9.385727517250062rem; --position:82.40417977425614%; --time:3.176298027243186s; --delay:-2.007396069396369s;"></div>
                    <div class="bubble" style="--size:4.340904399536686rem; --distance:9.981200344129665rem; --position:41.636501938752644%; --time:2.273295567115423s; --delay:-3.350262852994001s;"></div>
                    <div class="bubble" style="--size:3.9501361602556377rem; --distance:6.299782639759703rem; --position:62.866443873994115%; --time:3.5616200652342758s; --delay:-3.8512033735411695s;"></div>
                    <div class="bubble" style="--size:2.359352703967664rem; --distance:8.365194524323577rem; --position:79.31756018490583%; --time:2.155947745383732s; --delay:-2.9593133153627305s;"></div>
                    <div class="bubble" style="--size:2.9388105071380988rem; --distance:6.861919138509235rem; --position:54.71219727653074%; --time:3.738775822620339s; --delay:-2.5230195732624723s;"></div>
                    <div class="bubble" style="--size:3.4077061535058206rem; --distance:8.6031869621876rem; --position:49.55168557929223%; --time:2.0497138185422146s; --delay:-3.653687636389232s;"></div>
                    <div class="bubble" style="--size:4.978876790646977rem; --distance:8.18784946398537rem; --position:37.663299464936856%; --time:2.028514844283862s; --delay:-2.764548302805722s;"></div>
                    <div class="bubble" style="--size:3.189054575542702rem; --distance:9.01147076020588rem; --position:52.99481802569711%; --time:3.0403861435218187s; --delay:-3.7457623152522483s;"></div>
                    <div class="bubble" style="--size:3.1714215588782224rem; --distance:9.673066851904812rem; --position:104.53725943948407%; --time:2.7231250493227614s; --delay:-3.981345981359449s;"></div>
                    <div class="bubble" style="--size:4.517890930572849rem; --distance:9.225542341991794rem; --position:43.368274413032836%; --time:2.071325473366742s; --delay:-2.379020759087284s;"></div>
                    <div class="bubble" style="--size:4.849729328904522rem; --distance:6.567907636482618rem; --position:61.397734136496695%; --time:2.781863416349774s; --delay:-3.9237728199687876s;"></div>
                    <div class="bubble" style="--size:5.963977067932669rem; --distance:9.398492727538683rem; --position:15.178541497144504%; --time:2.1531901107415163s; --delay:-3.489184025617567s;"></div>
                    <div class="bubble" style="--size:3.134477089371946rem; --distance:6.270064307944724rem; --position:29.27357190613806%; --time:3.6584788661059466s; --delay:-3.806153652006688s;"></div>
                    <div class="bubble" style="--size:3.3567854867763067rem; --distance:6.2807968260991505rem; --position:86.81620633063001%; --time:2.221598111136015s; --delay:-3.171347796864601s;"></div>
                    <div class="bubble" style="--size:4.425979143428153rem; --distance:7.653187944323371rem; --position:69.85743401531045%; --time:3.9891832409431887s; --delay:-3.332242006603157s;"></div>
                    <div class="bubble" style="--size:4.157840665439269rem; --distance:9.896427083323703rem; --position:96.9664857275155%; --time:2.138537889031322s; --delay:-3.151623353006493s;"></div>
                    <div class="bubble" style="--size:4.975817793285099rem; --distance:7.327557314049413rem; --position:-3.0243143662477223%; --time:3.455565670623184s; --delay:-2.666692953092999s;"></div>
                    <div class="bubble" style="--size:3.2110088515952624rem; --distance:8.502889977712119rem; --position:79.32117794322242%; --time:2.627915192678919s; --delay:-3.633974616666344s;"></div>
                    <div class="bubble" style="--size:3.4029845459421564rem; --distance:6.133576632249354rem; --position:86.50917738033186%; --time:2.065205056350488s; --delay:-2.1854400141863177s;"></div>
                    <div class="bubble" style="--size:3.4293872204127425rem; --distance:9.709137263982829rem; --position:84.92707662510938%; --time:3.715047336812381s; --delay:-3.3862838109488838s;"></div>
                    <div class="bubble" style="--size:2.8340017191906473rem; --distance:7.635825597920531rem; --position:44.76772305626906%; --time:3.3488959593650414s; --delay:-3.1248715673629874s;"></div>
                    <div class="bubble" style="--size:4.307043405175964rem; --distance:8.659465652730052rem; --position:69.60477515193043%; --time:2.781466576807807s; --delay:-2.43906067458904s;"></div>
                    <div class="bubble" style="--size:2.641591767284008rem; --distance:8.300771478586586rem; --position:29.692202899808322%; --time:3.2596395935127553s; --delay:-3.8920722041810047s;"></div>
                    <div class="bubble" style="--size:4.67830132039542rem; --distance:6.18286815834352rem; --position:46.5609243440568%; --time:3.5016440716533777s; --delay:-3.6376124381486616s;"></div>
                    <div class="bubble" style="--size:3.909748754593622rem; --distance:8.749213703612039rem; --position:22.4032641134057%; --time:3.2239332316560736s; --delay:-3.4603595971230505s;"></div>
                    <div class="bubble" style="--size:4.8174684384556485rem; --distance:9.886626701816951rem; --position:10.609969496914392%; --time:3.146620584820196s; --delay:-3.4607486840463824s;"></div>
                    <div class="bubble" style="--size:4.452224114535507rem; --distance:9.667121314872126rem; --position:12.404538478470673%; --time:3.5930013018137688s; --delay:-2.565878516270811s;"></div>
                    <div class="bubble" style="--size:4.013932234475068rem; --distance:7.861074804454235rem; --position:53.99171524594224%; --time:3.163060287532948s; --delay:-2.18639112478827s;"></div>
                    <div class="bubble" style="--size:2.0763180403057016rem; --distance:8.448955803196203rem; --position:-0.9201118504565358%; --time:3.123144650855336s; --delay:-2.8951308617194442s;"></div>
                    <div class="bubble" style="--size:4.791068225984075rem; --distance:9.026400092083897rem; --position:55.85171215287924%; --time:2.70912649381472s; --delay:-3.1981716882697375s;"></div>
                    <div class="bubble" style="--size:4.149470944027365rem; --distance:9.400751965882531rem; --position:16.969771691897858%; --time:3.485303719159684s; --delay:-2.5414351899622614s;"></div>
                    <div class="bubble" style="--size:4.3454200872870485rem; --distance:7.50566277474211rem; --position:85.83424519972515%; --time:3.1002271770767744s; --delay:-3.0482713818663068s;"></div>
                    <div class="bubble" style="--size:2.6381889025355125rem; --distance:6.696699862159093rem; --position:18.957100171458688%; --time:3.551230160378388s; --delay:-2.8368703372012827s;"></div>
                    <div class="bubble" style="--size:4.717691422431765rem; --distance:8.092126017590967rem; --position:11.771608168103846%; --time:2.149495767253491s; --delay:-3.583572624804426s;"></div>
                    <div class="bubble" style="--size:3.9181917371745136rem; --distance:9.500504643607037rem; --position:44.38231465250379%; --time:3.460914172327254s; --delay:-3.3778568434638787s;"></div>
                    <div class="bubble" style="--size:2.413197548735808rem; --distance:7.625165824186588rem; --position:35.836614315779606%; --time:3.2853385392186767s; --delay:-3.259648169100105s;"></div>
                    <div class="bubble" style="--size:4.502836059019789rem; --distance:6.792905426909079rem; --position:35.35496820809252%; --time:3.3210191188960576s; --delay:-2.8707207697965975s;"></div>
                    <div class="bubble" style="--size:3.503228020507801rem; --distance:6.1275453705936735rem; --position:91.02582917282741%; --time:3.0826981941007183s; --delay:-2.565814522572015s;"></div>
                    <div class="bubble" style="--size:4.14573063639186rem; --distance:8.82809231756383rem; --position:9.106544573714778%; --time:3.123699214302874s; --delay:-3.1471956352109745s;"></div>
                    <div class="bubble" style="--size:2.617879499750148rem; --distance:6.2121814354915115rem; --position:96.41374338745179%; --time:3.9127939281949344s; --delay:-3.282192406058893s;"></div>
                    <div class="bubble" style="--size:5.373975051854878rem; --distance:7.448212234990475rem; --position:104.67945812309128%; --time:2.556394790157877s; --delay:-2.1897210183030364s;"></div>
                    <div class="bubble" style="--size:5.111726090963998rem; --distance:8.259838252903972rem; --position:87.76032986326825%; --time:3.3144397581871745s; --delay:-2.4034326788858706s;"></div>
                    <div class="bubble" style="--size:4.014372399943303rem; --distance:7.262453979845501rem; --position:44.75556021164576%; --time:2.2837271758699424s; --delay:-3.333323952917133s;"></div>
                    <div class="bubble" style="--size:2.6934188056896424rem; --distance:8.329874552482918rem; --position:86.40997614370494%; --time:2.7845464104790425s; --delay:-2.2447361196526816s;"></div>
                    <div class="bubble" style="--size:3.6893749667870743rem; --distance:8.02890727404608rem; --position:38.31031190009334%; --time:2.681780504375709s; --delay:-3.3181878581729416s;"></div>
                    <div class="bubble" style="--size:2.2856869356927048rem; --distance:6.2852075857980125rem; --position:13.70230540216776%; --time:3.727882836879731s; --delay:-2.357376064243813s;"></div>
                    <div class="bubble" style="--size:3.5842769554696776rem; --distance:8.412492190930301rem; --position:16.541296022515976%; --time:3.620706177508351s; --delay:-2.4040963192663627s;"></div>
                    <div class="bubble" style="--size:4.7718197362201416rem; --distance:6.7350605388012665rem; --position:55.18369650201701%; --time:3.4041888868933787s; --delay:-2.73946628071609s;"></div>
                    <div class="bubble" style="--size:3.1253932213632307rem; --distance:6.734974014874715rem; --position:31.035622679897678%; --time:2.137334925357219s; --delay:-3.5925256103462075s;"></div>
                    <div class="bubble" style="--size:5.683813187294752rem; --distance:6.091110299811846rem; --position:97.53157022363669%; --time:3.4963160350946434s; --delay:-3.1015829705637783s;"></div>
                    <div class="bubble" style="--size:5.815354717264198rem; --distance:8.530177043286844rem; --position:36.49622594254371%; --time:2.3339690973653924s; --delay:-3.645946406307183s;"></div>
                    <div class="bubble" style="--size:4.682789004666474rem; --distance:7.037574402021541rem; --position:98.6455489031875%; --time:3.3072242923181814s; --delay:-2.915231737553672s;"></div>
                    <div class="bubble" style="--size:2.088912412099628rem; --distance:6.3451583771727735rem; --position:15.100935587769083%; --time:3.528749938584399s; --delay:-3.6658988523615306s;"></div>
                    <div class="bubble" style="--size:2.812277386768491rem; --distance:6.725675956706162rem; --position:92.43933793235456%; --time:2.39686965800169s; --delay:-3.9565999903488254s;"></div>
                    <div class="bubble" style="--size:2.4959730338532715rem; --distance:7.867352281326766rem; --position:4.222420911221349%; --time:3.887287515589115s; --delay:-3.3124330668709243s;"></div>
                    <div class="bubble" style="--size:3.9499317009824866rem; --distance:8.061940835329434rem; --position:95.17714136895349%; --time:3.8564599821879817s; --delay:-3.5717553623709186s;"></div>
                    <div class="bubble" style="--size:2.5103969651206315rem; --distance:9.52813865297086rem; --position:36.11300328119087%; --time:3.417099486107817s; --delay:-2.516810812912058s;"></div>
                    <div class="bubble" style="--size:2.365888059485348rem; --distance:7.444474237490798rem; --position:56.40523613126342%; --time:2.556473632927774s; --delay:-3.2032781428132604s;"></div>
                    <div class="bubble" style="--size:2.7383761154369726rem; --distance:9.316864194372645rem; --position:33.64978790521874%; --time:2.515203189363956s; --delay:-3.066058531827109s;"></div>
                    <div class="bubble" style="--size:5.661790437735024rem; --distance:8.073265028405885rem; --position:97.29828303091283%; --time:2.227720371938393s; --delay:-3.6788914555912444s;"></div>
                    <div class="bubble" style="--size:3.1578156982566394rem; --distance:9.144176642921238rem; --position:-4.1981582300146165%; --time:2.5692120792668454s; --delay:-2.8300175994824146s;"></div>
                    <div class="bubble" style="--size:4.885336686484126rem; --distance:7.584033831895609rem; --position:58.18890259861891%; --time:3.7287395402424677s; --delay:-3.0873100211802624s;"></div>
                </div>
                <div class="content">
                    <div>
                        <div><b>Eldew</b><a href="#">Secuce</a><a href="#">Drupand</a><a href="#">Oceash</a><a href="#">Ugefe</a><a href="#">Babed</a></div>
                        <div><b>Spotha</b><a href="#">Miskasa</a><a href="#">Agithe</a><a href="#">Scesha</a><a href="#">Lulle</a></div>
                        <div><b>Chashakib</b><a href="#">Chogauw</a><a href="#">Phachuled</a><a href="#">Tiebeft</a><a href="#">Ocid</a><a href="#">Izom</a><a href="#">Ort</a></div>
                        <div><b>Athod</b><a href="#">Pamuz</a><a href="#">Vapert</a><a href="#">Neesk</a><a href="#">Omemanen</a></div>
                    </div>
                    <div>

                        <a class="image" href="#" target="_blank" style="background-image: url(&quot;https://s3-us-west-2.amazonaws.com/s.cdpn.io/199011/happy.svg&quot;)"></a>
                        <p>©2019 Not Really</p>
                    </div>
                </div>
            </div>
            <svg style="position: fixed; top: 100vh">
            <defs>
            <filter id="blob">
                <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur"></feGaussianBlur>
                <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="blob"></feColorMatrix>
                <!--feComposite(in="SourceGraphic" in2="blob" operator="atop") //After reviewing this after years I can't remember why I added this but it isn't necessary for the blob effect-->
            </filter>
            </defs>
            </svg>
        </div>
    </body>
</html>
